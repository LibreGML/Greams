.class Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;
.super Lage/of/civilizations2/jakowski/lukasz/MenuElement;
.source "Graph_Vertical.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;
    }
.end annotation


# instance fields
.field private GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

.field private bDecimal:B

.field private drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;

.field private fAvaragePoint:F

.field private fScrollNewMenuPosY:F

.field private iAvaragePosY:I

.field private iButtonsPosX:I

.field private iButtonsPosY:I

.field private iDataWidth:I

.field private iHoveredID:I

.field private iMaxPoint:I

.field private iMinPoint:I

.field private iScrollPosX:I

.field private iScrollPosX2:I

.field private iValuesSize:I

.field private iValuesTotal:I

.field private iWidthTextY:I

.field private lValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;",
            ">;"
        }
    .end annotation
.end field

.field private lessThanTen:Z

.field private moveable:Z

.field private sTextX:Ljava/lang/String;

.field private sTextY:Ljava/lang/String;

.field private scrollModeY:Z

.field private splitBy100:Z

.field private statisticsMode:Z

.field private verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;


# direct methods
.method protected constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIZ",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesTotal:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iDataWidth:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->splitBy100:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->statisticsMode:Z

    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->bDecimal:B

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lessThanTen:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->moveable:Z

    const/4 v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->scrollModeY:Z

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iScrollPosX:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iScrollPosX2:I

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->fScrollNewMenuPosY:F

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->NUM_OF_PROVINCES_BY_CONTINENT:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    if-ne p1, v0, :cond_0

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$1;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->POPULATION_OF_CIVILIZATIONS:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    if-ne p1, v0, :cond_1

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$2;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->POPULATION_OF_CIVILIZATION_ALL_AROUND_WORLD:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    if-ne p1, v0, :cond_2

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$3;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->ARMIES:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    if-ne p1, v0, :cond_3

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$4;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->ARMY_PER_CAPITA:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_4

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$5;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->splitBy100:Z

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->TECHNOLOGY_LEVELS:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    if-ne p1, v0, :cond_5

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$6;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->splitBy100:Z

    goto/16 :goto_0

    :cond_5
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->POPULATION_BY_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    if-ne p1, v0, :cond_6

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$7;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->CONQUERED_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    if-ne p1, v0, :cond_7

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$8;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->CONSTRUCTED_BUILDINGS:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    if-ne p1, v0, :cond_8

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$9;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->ECONOMY_BY_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    if-ne p1, v0, :cond_9

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$10;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;

    goto :goto_0

    :cond_9
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->ARMY_BY_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    if-ne p1, v0, :cond_a

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$11;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;

    goto :goto_0

    :cond_a
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->TECHNOLOGY_LEVELS_BY_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    if-ne p1, v0, :cond_b

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$12;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->splitBy100:Z

    goto :goto_0

    :cond_b
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->ECONOMY_OF_CIVILIZATIONS:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    if-ne p1, v0, :cond_c

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$13;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;

    goto :goto_0

    :cond_c
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->POPULATION_OF_CIVILIZATION_BY_NATIONALITIES:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    if-ne p1, v0, :cond_d

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$14;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;

    :cond_d
    :goto_0
    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iDataWidth:I

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->setPosX(I)V

    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->setPosY(I)V

    invoke-virtual {p0, p6}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->setWidth(I)V

    invoke-virtual {p0, p7}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->setHeight(I)V

    invoke-virtual {p0, p8}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->setVisible(Z)V

    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->sTextX:Ljava/lang/String;

    iput-object p3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->sTextY:Ljava/lang/String;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    const p2, 0x3f333333    # 0.7f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iWidthTextY:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iput-object p9, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->buildData()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->buildValuesHeights()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;->GRAPH_VERTICAL:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->typeOfElement:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;)I
    .locals 0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getStatisticsWidth()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;)Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;
    .locals 0

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    return-object p0
.end method

.method static synthetic access$300(Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsValue(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$400(Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;)I
    .locals 0

    iget p0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesTotal:I

    return p0
.end method

.method static synthetic access$500(Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsValueWithFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V

    return-void
.end method

.method private final drawStatisticsBegan(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 10

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->sTextX:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int v5, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v6, v0, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getStatisticsWidth()I

    move-result v0

    mul-int/lit8 v7, v0, 0x2

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsBoxTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getStatisticsWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    add-int/2addr v0, v2

    move v9, v0

    :goto_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;->getTextSize()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;->getText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    add-int/2addr v0, v9

    add-int v6, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v7, v0, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getStatisticsWidth()I

    move-result v8

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsBoxTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getStatisticsWidth()I

    move-result v0

    add-int/2addr v9, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;

    invoke-interface {v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;->getTotal()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int/2addr v0, v9

    add-int v5, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v6, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v0

    sub-int/2addr v0, v9

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v7, v0, v2

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsBoxTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, p2

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v4

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v1

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x2

    sub-int/2addr v3, p3

    int-to-float v3, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v1

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v5

    neg-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v1

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosY:I

    add-int v6, v0, p3

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsEnd(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZI)V

    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 p4, -0x1

    :goto_1
    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;->getTextSize()I

    move-result p5

    add-int/lit8 p5, p5, -0x1

    if-ge p4, p5, :cond_1

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_vertical:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result p5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    add-int/2addr p5, v0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getStatisticsWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p5, v0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getStatisticsWidth()I

    move-result v0

    add-int/lit8 p4, p4, 0x1

    mul-int v0, v0, p4

    add-int/2addr p5, v0

    add-int/lit8 p5, p5, -0x1

    add-int v4, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result p5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    add-int/2addr p5, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_vertical:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int/2addr p5, v0

    add-int v5, p5, p3

    const/4 v6, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result p5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x2

    sub-int v7, p5, v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    goto :goto_1

    :cond_1
    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result p4

    sget p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float p5, p5

    mul-float p5, p5, v1

    float-to-int p5, p5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p5, v0

    add-int/2addr p4, p5

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getStatisticsWidth()I

    move-result p5

    mul-int/lit8 p5, p5, 0x2

    add-int/2addr p4, p5

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getStatisticsWidth()I

    move-result p5

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;->getTextSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0x1

    mul-int p5, p5, v0

    add-int/2addr p4, p5

    add-int/lit8 p4, p4, -0x1

    add-int v4, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result p2

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float p4, p4

    mul-float p4, p4, v1

    float-to-int p4, p4

    sget p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 p5, p5, 0x2

    add-int/2addr p4, p5

    add-int/2addr p2, p4

    add-int v5, p2, p3

    const/4 v6, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result p2

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float p3, p3

    mul-float p3, p3, v1

    float-to-int p3, p3

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    mul-int/lit8 p3, p3, 0x2

    sub-int v7, p2, p3

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method private final drawStatisticsBoxTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V
    .locals 11

    move-object v8, p1

    move v9, p3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3d4ccccd    # 0.05f

    const v10, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v1, v1, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v10

    float-to-int v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v1, v2

    move-object v1, p1

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3dc08312    # 0.094f

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v1, p4, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v10

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v10

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v10

    float-to-int v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v5, v1, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    move v2, p3

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v10

    float-to-int v1, v1

    add-int/2addr v1, p4

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v3, v1, v2

    const/4 v5, 0x1

    move-object v1, p1

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_vertical:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    add-int/lit8 v1, v9, -0x1

    add-int v2, v1, p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_vertical:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v3, p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v10

    float-to-int v1, v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int v5, v1, v4

    const/4 v4, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    int-to-float v1, v9

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sub-int/2addr v2, p4

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v3, p5, v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    neg-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v9

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, p4

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graph;->TEXT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    move-object v3, p2

    invoke-static {p1, p2, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final drawStatisticsEnd(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZI)V
    .locals 14

    move-object v6, p0

    move-object v7, p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    const v8, 0x3f333333    # 0.7f

    mul-float v0, v0, v8

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    div-float v9, v0, v1

    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_0
    iget v0, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge v10, v0, :cond_3

    iget-object v0, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getInView()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    rem-int/lit8 v0, v10, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v8

    float-to-int v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int v0, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v8

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v3, v10, 0x1

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    add-int v1, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsRowBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    :cond_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v0, v0, -0x1

    if-ne v10, v0, :cond_2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v8

    float-to-int v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int v0, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v8

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v3, v10, 0x1

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    add-int v1, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsRowHoverBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    :cond_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v8

    float-to-int v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int v0, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v8

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v11, v10, 0x1

    mul-int v2, v2, v11

    add-int/2addr v1, v2

    add-int v1, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsRowLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;

    invoke-interface {v1, v10}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;->getStatsLPCivFlagID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v8

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    mul-int v3, v3, v11

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;

    invoke-interface {v4, v10}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;->getStatsLPCivFlagID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v1, v1

    mul-float v1, v1, v9

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v9

    float-to-double v12, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v5, v12

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v8

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    mul-int v3, v3, v11

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v1, v1

    mul-float v1, v1, v9

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v9

    float-to-double v12, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v5, v12

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget-object v0, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;

    invoke-interface {v0, v10}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;->getStatsLP(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v1, v1

    mul-float v1, v1, v9

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v8

    float-to-int v1, v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v8

    float-to-int v1, v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    mul-int v1, v1, v11

    add-int/2addr v0, v1

    add-int v4, v0, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getStatisticsWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v1, v1

    mul-float v1, v1, v9

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    int-to-float v5, v5

    add-float/2addr v1, v5

    float-to-int v1, v1

    sub-int v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsValue2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V

    iget-object v0, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsData:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;

    move v2, v10

    move/from16 v3, p6

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-interface/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical$DrawStatisticsData;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method

.method private final drawStatisticsRowBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 8

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f333333    # 0.7f

    const v2, 0x3d4ccccd    # 0.05f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    add-int/lit8 v6, p4, -0x1

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float p4, p4

    mul-float p4, p4, v1

    float-to-int p4, p4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int v7, p4, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method private final drawStatisticsRowHoverBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 7

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    add-int/lit8 v5, p4, -0x1

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float p4, p4

    const v0, 0x3f333333    # 0.7f

    mul-float p4, p4, v0

    float-to-int p4, p4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int v6, p4, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method private final drawStatisticsRowLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 7

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    const v2, 0x3f333333    # 0.7f

    mul-float v0, v0, v2

    float-to-int v0, v0

    add-int/2addr p3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int v4, p3, v0

    const/4 v6, 0x1

    move-object v2, p1

    move v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method private final drawStatisticsValue(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V
    .locals 3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p4, v0

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ee66666    # 0.45f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, p2, p3, p4, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method private final drawStatisticsValue2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    int-to-float v1, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sub-int/2addr v2, p4

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p5, v3

    int-to-float p5, p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, p5, v3}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    sget p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    add-int/2addr p3, p5

    sget p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p4, p5

    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, p2, p3, p4, p5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final drawStatisticsValueWithFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V
    .locals 9

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float v0, v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v4, p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, p5

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p3

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p3

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p3

    sub-int v5, v1, p3

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float p3, p3

    mul-float p3, p3, v0

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float p3, p3

    mul-float p3, p3, v0

    float-to-double v7, p3

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {p3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v3, p4, p3

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p3, p5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sub-int v4, p3, v2

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float p3, p3

    mul-float p3, p3, v0

    float-to-double v5, p3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float p3, p3

    mul-float p3, p3, v0

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p3

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float p3, p3

    mul-float p3, p3, v0

    float-to-int p3, p3

    add-int/2addr p4, p3

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p5, p3

    new-instance p3, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3ee66666    # 0.45f

    invoke-direct {p3, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, p2, p4, p5, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method private final getButtonsPosX(I)I
    .locals 2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iDataWidth:I

    mul-int v1, v1, p1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    mul-int v1, v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method private final getButtonsPosY(I)I
    .locals 2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float v0, v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    mul-int v0, v0, p1

    return v0
.end method

.method private final getButtonsWidth()I
    .locals 3

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iDataWidth:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    mul-int v0, v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    add-int/lit8 v2, v2, -0x1

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private final getStatisticsWidth()I
    .locals 3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float v1, v1, v2

    float-to-int v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;->getTextSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    div-int/2addr v0, v1

    return v0
.end method

.method private final roundAverage()V
    .locals 4

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->fAvaragePoint:F

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

    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->bDecimal:B

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->fAvaragePoint:F

    float-to-int v1, v0

    int-to-float v1, v1

    sub-float v1, v0, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->fAvaragePoint:F

    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lessThanTen:Z

    iget-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->bDecimal:B

    rem-int/lit8 v1, v0, 0xa

    const/16 v2, 0xa

    if-nez v1, :cond_0

    div-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->bDecimal:B

    goto :goto_0

    :cond_0
    if-ge v0, v2, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lessThanTen:Z

    goto :goto_0

    :cond_1
    iput-byte v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->bDecimal:B

    :cond_2
    :goto_0
    return-void
.end method

.method private final setHoveredID(I)V
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->buildElementHover()V

    :cond_0
    return-void
.end method

.method private final updateMoveable()V
    .locals 6

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->statisticsMode:Z

    const/4 v1, 0x1

    const v2, 0x3f333333    # 0.7f

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getButtonsPosY(I)I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v5, v2

    float-to-int v2, v5

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v4, v2

    if-le v0, v4, :cond_0

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->moveable:Z

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->moveable:Z

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosY:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getButtonsWidth()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v2

    float-to-int v2, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    sub-int/2addr v4, v2

    if-le v0, v4, :cond_2

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->moveable:Z

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->moveable:Z

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosX:I

    :goto_0
    return-void
.end method


# virtual methods
.method protected final buildData()V
    .locals 15

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->NUM_OF_PROVINCES_BY_CONTINENT:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    const v4, 0x3f333333    # 0.7f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->buildContintentData()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getContinentsSize()I

    move-result v3

    if-ge v2, v3, :cond_3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getOceanContinentID()I

    move-result v3

    if-eq v2, v3, :cond_2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v3

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v3

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getColor(I)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v7, v7

    mul-float v7, v7, v4

    float-to-int v7, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    invoke-direct {v2, v0, v1, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    goto/16 :goto_13

    :cond_4
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->POPULATION_OF_CIVILIZATIONS:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    :goto_2
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->buildPopulationData()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Native"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POPULATION:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POPULATION:[Lcom/badlogic/gdx/graphics/Color;

    array-length v3, v3

    sub-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Second"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POPULATION:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POPULATION:[Lcom/badlogic/gdx/graphics/Color;

    array-length v3, v3

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Rest"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POPULATION:[Lcom/badlogic/gdx/graphics/Color;

    aget-object v2, v2, v6

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v7, v7

    mul-float v7, v7, v4

    float-to-int v7, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    invoke-direct {v2, v0, v1, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    goto/16 :goto_13

    :cond_6
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->POPULATION_OF_CIVILIZATION_ALL_AROUND_WORLD:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    const-string v7, "]"

    const-string v8, "["

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x437f0000    # 255.0f

    if-ne v2, v3, :cond_b

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v2

    if-ltz v2, :cond_7

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    if-lez v2, :cond_7

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    goto :goto_3

    :cond_7
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    :goto_3
    const/4 v3, 0x0

    :goto_4
    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge v3, v11, :cond_8

    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v11, v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->buildPopulationOfCivilizationAllAroundTheWorldData(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_5
    if-ltz v3, :cond_a

    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getValue()I

    move-result v11

    if-nez v11, :cond_9

    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    :cond_a
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v10

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    invoke-direct {v3, v7, v8, v2, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v7, v7

    mul-float v7, v7, v4

    float-to-int v7, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    invoke-direct {v2, v0, v1, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    goto/16 :goto_13

    :cond_b
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->ARMIES:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_d

    const/4 v2, 0x0

    :goto_6
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_c

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->buildArmiesData()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_c
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "ArmySize"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f400000    # 0.75f

    const v7, 0x3de147ae    # 0.11f

    const v8, 0x3da3d70a    # 0.08f

    invoke-direct {v2, v3, v7, v8, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v7, v7

    mul-float v7, v7, v4

    float-to-int v7, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    invoke-direct {v2, v0, v1, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    goto/16 :goto_13

    :cond_d
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->ARMY_PER_CAPITA:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    const v11, 0x3e0f5c29    # 0.14f

    const v12, 0x3e3851ec    # 0.18f

    if-ne v2, v3, :cond_f

    const/4 v2, 0x0

    :goto_7
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_e

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->buildArmyPerCapitaData()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_e
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "ArmyPerCapita"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v4, v12, v11, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v7, v7

    mul-float v7, v7, v4

    float-to-int v7, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    invoke-direct {v2, v0, v1, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    goto/16 :goto_13

    :cond_f
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->TECHNOLOGY_LEVELS:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    const-string v13, "TechnologyLevels"

    if-ne v2, v3, :cond_11

    const/4 v2, 0x0

    :goto_8
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_10

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->buildTechnologyLevelsData()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_10
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v2, v13}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TECHNOLOGY_LEVEL:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TECHNOLOGY_LEVEL:[Lcom/badlogic/gdx/graphics/Color;

    array-length v3, v3

    sub-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v7, v7

    mul-float v7, v7, v4

    float-to-int v7, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    invoke-direct {v2, v0, v1, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    goto/16 :goto_13

    :cond_11
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->POPULATION_BY_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_13

    const/4 v2, 0x0

    :goto_9
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_12

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->buildPopulationByProvincesData()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_12
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Population"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POPULATION:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POPULATION:[Lcom/badlogic/gdx/graphics/Color;

    array-length v3, v3

    sub-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v7, v7

    mul-float v7, v7, v4

    float-to-int v7, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    invoke-direct {v2, v0, v1, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    goto/16 :goto_13

    :cond_13
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->ECONOMY_BY_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    const-string v14, "Economy"

    if-ne v2, v3, :cond_15

    const/4 v2, 0x0

    :goto_a
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_14

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->buildEconomyByProvincesData()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_14
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v2, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ECONOMY:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ECONOMY:[Lcom/badlogic/gdx/graphics/Color;

    array-length v3, v3

    sub-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v7, v7

    mul-float v7, v7, v4

    float-to-int v7, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    invoke-direct {v2, v0, v1, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    goto/16 :goto_13

    :cond_15
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->CONQUERED_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_17

    const/4 v2, 0x0

    :goto_b
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_16

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->buildConqueredProvincesData()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_16
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "ConqueredProvinces"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ECONOMY:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ECONOMY:[Lcom/badlogic/gdx/graphics/Color;

    array-length v3, v3

    sub-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v7, v7

    mul-float v7, v7, v4

    float-to-int v7, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    invoke-direct {v2, v0, v1, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    goto/16 :goto_13

    :cond_17
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->CONSTRUCTED_BUILDINGS:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_19

    const/4 v2, 0x0

    :goto_c
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_18

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->buildConstructedBuildingsData()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_18
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "ConstructedBuildings"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ECONOMY:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ECONOMY:[Lcom/badlogic/gdx/graphics/Color;

    array-length v3, v3

    sub-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v7, v7

    mul-float v7, v7, v4

    float-to-int v7, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    invoke-direct {v2, v0, v1, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    goto/16 :goto_13

    :cond_19
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->ARMY_BY_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_1b

    const/4 v2, 0x0

    :goto_d
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_1a

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->buildArmyByProvincesData()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1a
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Army"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v4, v12, v11, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v7, v7

    mul-float v7, v7, v4

    float-to-int v7, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    invoke-direct {v2, v0, v1, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    goto/16 :goto_13

    :cond_1b
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->TECHNOLOGY_LEVELS_BY_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_1d

    const/4 v2, 0x0

    :goto_e
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_1c

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->buildTechnologyLevelsByProvincesData()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1c
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v2, v13}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TECHNOLOGY_LEVEL:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TECHNOLOGY_LEVEL:[Lcom/badlogic/gdx/graphics/Color;

    array-length v3, v3

    sub-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v7, v7

    mul-float v7, v7, v4

    float-to-int v7, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    invoke-direct {v2, v0, v1, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    goto/16 :goto_13

    :cond_1d
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->ECONOMY_OF_CIVILIZATIONS:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_1f

    const/4 v2, 0x0

    :goto_f
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_1e

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->buildEconomyData()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1e
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v2, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ECONOMY:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ECONOMY:[Lcom/badlogic/gdx/graphics/Color;

    array-length v3, v3

    sub-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v7, v7

    mul-float v7, v7, v4

    float-to-int v7, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    invoke-direct {v2, v0, v1, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    goto/16 :goto_13

    :cond_1f
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->POPULATION_OF_CIVILIZATION_BY_NATIONALITIES:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_24

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v2

    if-ltz v2, :cond_20

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    if-lez v2, :cond_20

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    goto :goto_10

    :cond_20
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    :goto_10
    const/4 v3, 0x0

    :goto_11
    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge v3, v11, :cond_21

    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v11, v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->buildPopulationOfCivByNationalitiesData(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_21
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_12
    if-ltz v3, :cond_23

    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getValue()I

    move-result v11

    if-nez v11, :cond_22

    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_22
    add-int/lit8 v3, v3, -0x1

    goto :goto_12

    :cond_23
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v10

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    invoke-direct {v3, v7, v8, v2, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v7, v7

    mul-float v7, v7, v4

    float-to-int v7, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    invoke-direct {v2, v0, v1, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    :cond_24
    :goto_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_14
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge v1, v2, :cond_25

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_25
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_28

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getValue()I

    move-result v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getValue()I

    move-result v7

    if-le v3, v7, :cond_26

    move v2, v1

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_27
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_15

    :cond_28
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getValue()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iMaxPoint:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iMinPoint:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_17

    :catch_0
    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iMinPoint:I

    :goto_17
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->fAvaragePoint:F

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_18
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge v6, v3, :cond_2c

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iMaxPoint:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getValue()I

    move-result v5

    if-ge v3, v5, :cond_29

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getValue()I

    move-result v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iMaxPoint:I

    :cond_29
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iMinPoint:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getValue()I

    move-result v5

    if-le v3, v5, :cond_2a

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getValue()I

    move-result v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iMinPoint:I

    :cond_2a
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getValue()I

    move-result v3

    if-lez v3, :cond_2b

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getValue()I

    move-result v3

    int-to-long v7, v3

    add-long/2addr v0, v7

    :cond_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_2c
    long-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->fAvaragePoint:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->fAvaragePoint:F

    mul-float v3, v3, v2

    mul-float v1, v1, v3

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iMaxPoint:I

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iMinPoint:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iAvaragePosY:I

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->roundAverage()V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->updateMoveable()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->updateInView()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->countValuesTotal()V

    return-void
.end method

.method protected buildElementHover()V
    .locals 13

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->GRAPH_DATA_TYPE:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;->NUM_OF_PROVINCES_BY_CONTINENT:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Type;

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->statisticsMode:Z

    const/4 v1, 0x0

    const-string v2, "Provinces"

    const-string v3, "]"

    const-string v4, "/"

    const-string v5, " ["

    const-string v6, ": "

    const-string v7, ""

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getCivID()I

    move-result v10

    invoke-direct {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(I)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    iget v12, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v9, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v9, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v9, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-direct {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(I)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v11, "Undiscovered"

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v9, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v9, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v3, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->clear()V

    :goto_0
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;

    invoke-direct {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;-><init>()V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v3, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->clear()V

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->clear()V

    :goto_1
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getValuesSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getValueDataTypeID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getValue(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    goto/16 :goto_3

    :cond_1
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getCivID()I

    move-result v10

    invoke-direct {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(I)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    iget v12, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v9, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v9, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v3, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->clear()V

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;

    invoke-direct {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;-><init>()V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v3, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->clear()V

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->clear()V

    :goto_2
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getValuesSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getValueDataTypeID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getValue(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    goto :goto_3

    :cond_3
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->resetAnimation_2()V

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    :cond_4
    :goto_3
    return-void
.end method

.method protected final buildValuesHeights()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    const v4, 0x3f333333    # 0.7f

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iMaxPoint:I

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->buildHeights(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final countValuesTotal()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesTotal:I

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesTotal:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getValue()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesTotal:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    iget-boolean v0, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->scrollModeY:Z

    const/4 v14, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v16, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->statisticsMode:Z

    const v1, 0x3f7851ec    # 0.97f

    if-eqz v0, :cond_1

    iget v0, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->fScrollNewMenuPosY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v13

    if-lez v0, :cond_0

    iget v0, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosY:I

    iget v2, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->fScrollNewMenuPosY:F

    float-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->setCurrent(I)V

    iget v0, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->fScrollNewMenuPosY:F

    mul-float v0, v0, v1

    iput v0, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->fScrollNewMenuPosY:F

    goto :goto_0

    :cond_0
    iput-boolean v14, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->scrollModeY:Z

    goto :goto_0

    :cond_1
    iget v0, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->fScrollNewMenuPosY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v13

    if-lez v0, :cond_2

    iget v0, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosX:I

    iget v2, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->fScrollNewMenuPosY:F

    float-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->setCurrent(I)V

    iget v0, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->fScrollNewMenuPosY:F

    mul-float v0, v0, v1

    iput v0, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->fScrollNewMenuPosY:F

    goto :goto_0

    :cond_2
    iput-boolean v14, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->scrollModeY:Z

    :goto_0
    invoke-static/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    const v12, 0x3f333333    # 0.7f

    mul-float v2, v2, v12

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v12

    float-to-int v4, v4

    sub-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v12

    float-to-int v5, v5

    sub-int/2addr v1, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3d99999a    # 0.075f

    invoke-direct {v0, v13, v13, v13, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->patt2:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v12

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->patt2:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v12

    float-to-int v4, v4

    sub-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v12

    float-to-int v5, v5

    sub-int/2addr v1, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object v1, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->sTextY:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int v2, v0, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iget v3, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iWidthTextY:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    add-int v3, v0, p3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Graph;->TEXT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v5, 0x42b40000    # 90.0f

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    iget-object v0, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v12

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v12

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int v2, v2, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v12

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {v0, v15, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-boolean v0, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->statisticsMode:Z

    if-eqz v0, :cond_4

    add-int/lit8 v2, p2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->drawStatisticsBegan(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    const v17, 0x3f333333    # 0.7f

    goto/16 :goto_6

    :cond_4
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v12

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v12

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int v2, v2, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v15, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_33:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v12

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int v2, v2, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v12

    float-to-int v4, v4

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v0, v15, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_33:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v12

    float-to-int v1, v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v0

    iget v1, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iAvaragePosY:I

    add-int/2addr v0, v1

    add-int v10, v0, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v12

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v11, v0, v1

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosX:I

    neg-int v2, v2

    move-object/from16 v8, p1

    const v17, 0x3f333333    # 0.7f

    move v12, v0

    const/high16 v0, 0x3f800000    # 1.0f

    move v13, v1

    const/4 v1, 0x0

    move v14, v2

    invoke-virtual/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    new-instance v2, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v17

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    add-int v3, v3, p2

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v4, v4, p3

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v5

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v7, v7

    mul-float v7, v7, v17

    float-to-int v7, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getIsHovered()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    if-ltz v2, :cond_5

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    iget v4, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v4, v4, 0x1

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    iget v4, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    iget v3, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v4, v4, 0x1

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    iget v3, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v2, v3

    add-int v9, v2, p2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    neg-int v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v3

    add-int/2addr v2, v3

    add-int v10, v2, p3

    iget v2, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v11, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v17

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v12, v2, v3

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v7, 0x3ccccccd    # 0.025f

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    iget v4, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v4, v4, 0x1

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    iget v4, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    iget v3, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v4, v4, 0x1

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    iget v3, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v2, v3

    add-int v9, v2, p2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    neg-int v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v3

    add-int/2addr v2, v3

    add-int v10, v2, p3

    iget v2, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v2, v2, 0x2

    div-int/lit8 v11, v2, 0x4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v17

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v12, v2, v3

    const/4 v14, 0x0

    invoke-virtual/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v4, v3, 0x2

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    iget v4, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v4, v4, 0x1

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    iget v4, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iHoveredID:I

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    iget v3, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v4, v4, 0x1

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    iget v3, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v2, v3

    add-int v9, v2, p2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    neg-int v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v3

    add-int/2addr v2, v3

    add-int v10, v2, p3

    iget v2, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v2, v2, 0x2

    div-int/lit8 v11, v2, 0x4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v17

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v12, v2, v3

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_5
    iget-boolean v2, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->splitBy100:Z

    if-eqz v2, :cond_7

    :goto_1
    iget v2, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge v1, v2, :cond_9

    iget-object v2, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getInView()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v4, v1, 0x1

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v3, v3, v1

    sub-int/2addr v2, v3

    iget v3, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iDataWidth:I

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    iget v3, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v2, v3

    add-int v9, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v2

    add-int v10, v2, p3

    iget v11, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iDataWidth:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v17

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v12, v2, v3

    iget-object v2, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;->getColors()Ljava/util/List;

    move-result-object v13

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->drawData_ONLY_SPLTTED(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    iget v2, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge v1, v2, :cond_9

    iget-object v2, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getInView()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v4, v1, 0x1

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v3, v3, v1

    sub-int/2addr v2, v3

    iget v3, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iDataWidth:I

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    iget v3, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v2, v3

    add-int v9, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v2

    add-int v10, v2, p3

    iget v11, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iDataWidth:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v17

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v12, v2, v3

    iget-object v2, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;->getColors()Ljava/util/List;

    move-result-object v13

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->drawData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iMaxPoint:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v17

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    add-int v3, v3, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v4

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    add-int/2addr v4, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    add-int/lit8 v4, v4, 0x1

    add-int v4, v4, p3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v7, v7, v5

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v9, v9

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    sub-int/2addr v4, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v15, v1, v3, v4, v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget-byte v1, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->bDecimal:B

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->fAvaragePoint:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->fAvaragePoint:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lessThanTen:Z

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->bDecimal:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_b
    iget-byte v2, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->bDecimal:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v17

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget v4, v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iAvaragePosY:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    add-int v3, v3, p3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v15, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    :goto_6
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f19999a    # 0.6f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v17

    float-to-int v5, v5

    sub-int/2addr v1, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v17

    float-to-int v3, v3

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v17

    float-to-int v4, v4

    sub-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v4, v1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v17

    float-to-int v5, v5

    sub-int/2addr v1, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v17

    float-to-int v3, v3

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v17

    float-to-int v4, v4

    sub-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v4, v1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v1, v2

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v2, v2, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-virtual {v0, v15, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int v3, v1, p3

    const/4 v4, 0x1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v5, v1, -0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v2, v2, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v15, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v17

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    add-int v3, v1, p3

    const/4 v4, 0x1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v5, v1, -0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected getAnotherView()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->statisticsMode:Z

    return v0
.end method

.method protected getCurrent()I
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->statisticsMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosY:I

    return v0

    :cond_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosX:I

    return v0
.end method

.method protected getIsScrollable()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->moveable:Z

    return v0
.end method

.method protected getMoveable()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->moveable:Z

    return v0
.end method

.method protected final scrollTheMenu()V
    .locals 3

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->moveable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iScrollPosX:I

    if-lez v0, :cond_0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iScrollPosX2:I

    if-lez v1, :cond_0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->DENSITY:F

    mul-float v2, v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iScrollPosX:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iScrollPosX2:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float v0, v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->fScrollNewMenuPosY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->scrollModeY:Z

    :cond_0
    return-void
.end method

.method protected setAnotherView(Z)V
    .locals 1

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->statisticsMode:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->scrollModeY:Z

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosY:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosX:I

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->statisticsMode:Z

    if-nez v0, :cond_0

    :goto_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->resetAnimation()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->updateMoveable()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->updateInView()V

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->setHoveredID(I)V

    return-void
.end method

.method protected setCheckboxState(Z)V
    .locals 3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->buildValuesHeights()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->updateInView()V

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->verticalInfo:Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float v1, v1, v2

    float-to-int v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Info;->updateMoveable(I)V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->updateMoveable()V

    const/4 p1, 0x1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    return-void
.end method

.method protected setCurrent(I)V
    .locals 7

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->statisticsMode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x3f333333    # 0.7f

    if-eqz v0, :cond_2

    if-lez p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setUpdateSliderMenuPosY(Z)V

    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->scrollModeY:Z

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    neg-int v0, v0

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    mul-int v0, v0, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/2addr v0, v4

    if-ge p1, v0, :cond_1

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float p1, p1

    mul-float p1, p1, v3

    float-to-int p1, p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    neg-int p1, p1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    mul-int p1, p1, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int/2addr p1, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setUpdateSliderMenuPosY(Z)V

    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->scrollModeY:Z

    :cond_1
    :goto_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosY:I

    if-eq v0, p1, :cond_5

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosY:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->updateInView()V

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    goto :goto_2

    :cond_2
    if-gez p1, :cond_3

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setUpdateSliderMenuPosX(Z)V

    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->scrollModeY:Z

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getButtonsWidth()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v4

    sub-int/2addr v0, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iDataWidth:I

    add-int/2addr v0, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sub-int/2addr v0, v4

    if-le p1, v0, :cond_4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getButtonsWidth()I

    move-result p1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iDataWidth:I

    add-int/2addr p1, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p1, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sub-int/2addr p1, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setUpdateSliderMenuPosX(Z)V

    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->scrollModeY:Z

    :cond_4
    :goto_1
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosX:I

    if-eq v0, p1, :cond_5

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosX:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->updateInView()V

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected final setScrollPosY(I)V
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iScrollPosX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iScrollPosX2:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iScrollPosX:I

    return-void
.end method

.method protected setTypeOfButton(Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;)V
    .locals 0

    const/4 p1, -0x1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iScrollPosX2:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iScrollPosX:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->scrollModeY:Z

    return-void
.end method

.method protected setVisible(Z)V
    .locals 0

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setVisible(Z)V

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->setHoveredID(I)V

    return-void
.end method

.method protected srollByWheel(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->scrollModeY:Z

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getCurrent()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->setCurrent(I)V

    return-void
.end method

.method protected updateHover(IIII)V
    .locals 4

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->statisticsMode:Z

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v0

    add-int/2addr v0, p3

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    if-gt p1, v0, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v0

    add-int/2addr v0, p4

    if-lt p2, v0, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result v0

    add-int/2addr p4, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v0

    add-int/2addr p4, v0

    if-gt p2, p4, :cond_1

    :goto_0
    iget p2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge v1, p2, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result p4

    add-int/2addr p2, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v0, v1, 0x1

    mul-int p4, p4, v0

    sub-int/2addr p2, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int p4, p4, v1

    sub-int/2addr p2, p4

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iDataWidth:I

    mul-int p4, p4, v0

    sub-int/2addr p2, p4

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr p2, p4

    if-lt p1, p2, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result p4

    add-int/2addr p2, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int p4, p4, v0

    sub-int/2addr p2, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int p4, p4, v1

    sub-int/2addr p2, p4

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iDataWidth:I

    mul-int v3, p4, v0

    sub-int/2addr p2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr p2, v3

    add-int/2addr p2, p4

    if-gt p1, p2, :cond_0

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->setHoveredID(I)V

    return-void

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->setHoveredID(I)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v0

    add-int/2addr v0, p3

    if-lt p1, v0, :cond_4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosX()I

    move-result v0

    add-int/2addr p3, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v0

    add-int/2addr p3, v0

    if-gt p1, p3, :cond_4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result p1

    add-int/2addr p1, p4

    if-lt p2, p1, :cond_4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result p1

    add-int/2addr p1, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result p3

    add-int/2addr p1, p3

    if-gt p2, p1, :cond_4

    :goto_1
    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge v1, p1, :cond_4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result p1

    add-int/2addr p1, p4

    iget p3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosY:I

    add-int/2addr p1, p3

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float p3, p3

    const v0, 0x3f333333    # 0.7f

    mul-float p3, p3, v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr p3, v3

    float-to-int p3, p3

    mul-int p3, p3, v1

    add-int/2addr p1, p3

    if-lt p2, p1, :cond_3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getPosY()I

    move-result p1

    add-int/2addr p1, p4

    iget p3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosY:I

    add-int/2addr p1, p3

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float p3, p3

    mul-float p3, p3, v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr p3, v3

    float-to-int p3, p3

    mul-int p3, p3, v1

    add-int/2addr p1, p3

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float p3, p3

    mul-float p3, p3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p3, v0

    float-to-int p3, p3

    add-int/2addr p1, p3

    if-gt p2, p1, :cond_3

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->setHoveredID(I)V

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->setHoveredID(I)V

    :goto_2
    return-void
.end method

.method protected final updateInView()V
    .locals 8

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->statisticsMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x3f333333    # 0.7f

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge v0, v4, :cond_5

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getButtonsPosY(I)I

    move-result v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosY:I

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_0

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getButtonsPosY(I)I

    move-result v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosY:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    if-gt v4, v5, :cond_0

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->setInView(Z)V

    goto :goto_1

    :cond_0
    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getButtonsPosY(I)I

    move-result v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosY:I

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    if-ltz v4, :cond_1

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getButtonsPosY(I)I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosY:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getHeight()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    if-gt v4, v5, :cond_1

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->setInView(Z)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->setInView(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iValuesSize:I

    if-ge v0, v4, :cond_5

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getButtonsPosX(I)I

    move-result v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_3

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getButtonsPosX(I)I

    move-result v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->setInView(Z)V

    goto :goto_3

    :cond_3
    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getButtonsPosX(I)I

    move-result v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iDataWidth:I

    sub-int/2addr v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_4

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getButtonsPosX(I)I

    move-result v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iDataWidth:I

    sub-int/2addr v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->setInView(Z)V

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->setInView(Z)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
