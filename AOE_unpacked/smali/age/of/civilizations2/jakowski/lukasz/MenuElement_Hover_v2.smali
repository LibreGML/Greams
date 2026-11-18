.class Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;
.super Ljava/lang/Object;
.source "MenuElement_Hover_v2.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;


# static fields
.field protected static ANIMATION_ALPHA:F = 0.0f

.field protected static ANIMATION_INTERVAL:I = 0x992

.field protected static ANIMATION_PADDING:F = 0.0f

.field protected static ANIMATION_TIME:J = 0x0L

.field protected static final TEXT_SCALE:F = 0.75f


# instance fields
.field private backAnimation:Z

.field private iElementsSize:I

.field private iHeight:I

.field private iScrollPosX:I

.field private iWidth:I

.field private iWidthOver:I

.field private lElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;",
            ">;"
        }
    .end annotation
.end field

.field private lTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iElementsSize:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iHeight:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidth:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidthOver:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iScrollPosX:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->backAnimation:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->lTime:J

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->lElements:Ljava/util/List;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->lElements:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iElementsSize:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidth:I

    const/4 p1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iElementsSize:I

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->lElements:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;->getWidth()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->lElements:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;->getWidth()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidthOver:I

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->lElements:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;->getWidth()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidthOver:I

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidthOver:I

    if-lez p1, :cond_2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr p1, v2

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iScrollPosX:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->lTime:J

    :cond_2
    :goto_1
    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iElementsSize:I

    if-ge v0, p1, :cond_4

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->lElements:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;->getWidth()I

    move-result p1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidth:I

    if-le p1, v2, :cond_3

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->lElements:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;->getWidth()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidth:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidth:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x6

    add-int/2addr p1, v0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidth:I

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iElementsSize:I

    mul-int p1, p1, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iElementsSize:I

    sub-int/2addr v2, v1

    mul-int v0, v0, v2

    add-int/2addr p1, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr p1, v0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iHeight:I

    return-void
.end method

.method protected static final resetAnimation()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->ANIMATION_TIME:J

    const v0, 0x3c23d70a    # 0.01f

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->ANIMATION_ALPHA:F

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    int-to-float v0, v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->ANIMATION_PADDING:F

    return-void
.end method

.method protected static final resetAnimation_2()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->ANIMATION_TIME:J

    const v0, 0x3e99999a    # 0.3f

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->ANIMATION_ALPHA:F

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    int-to-float v0, v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->ANIMATION_PADDING:F

    return-void
.end method


# virtual methods
.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 3

    int-to-float p2, p2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->ANIMATION_PADDING:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidth:I

    add-int/2addr v0, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidth:I

    sub-int/2addr p2, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p2, v0

    :cond_0
    if-gez p3, :cond_1

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iHeight:I

    add-int/2addr v0, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    if-le v0, v1, :cond_2

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iHeight:I

    sub-int/2addr p3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p3, v0

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method public final drawAlwaysBelow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 3

    int-to-float p2, p2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->ANIMATION_PADDING:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p2, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p3, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidth:I

    add-int/2addr v0, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidth:I

    sub-int/2addr p2, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p2, v0

    :cond_0
    if-gez p3, :cond_1

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iHeight:I

    add-int/2addr v0, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    if-le v0, v1, :cond_2

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iHeight:I

    sub-int/2addr p3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p3, v0

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method public final drawAlwaysOver(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 3

    int-to-float p2, p2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->ANIMATION_PADDING:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p2, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iHeight:I

    sub-int/2addr p3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p3, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidth:I

    add-int/2addr v0, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidth:I

    sub-int/2addr p2, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p2, v0

    :cond_0
    if-gez p3, :cond_1

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iHeight:I

    add-int/2addr v0, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    if-le v0, v1, :cond_2

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iHeight:I

    sub-int/2addr p3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p3, v0

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method public final drawAlwaysOver_Mobile(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 3

    int-to-float p2, p2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->ANIMATION_PADDING:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidth:I

    div-int/lit8 v0, v0, 0x4

    sub-int/2addr p2, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iHeight:I

    sub-int/2addr p3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x4

    sub-int/2addr p3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    if-ge p2, v0, :cond_0

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    :cond_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidth:I

    add-int/2addr v0, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidth:I

    sub-int/2addr p2, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p2, v0

    :cond_1
    if-gez p3, :cond_2

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iHeight:I

    add-int/2addr v0, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    if-le v0, v1, :cond_3

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iHeight:I

    sub-int/2addr p3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p3, v0

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method public final drawProvinceInfo(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 1

    int-to-float p2, p2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->ANIMATION_PADDING:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method public final draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 10

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->getScrollPosX()I

    move-result v0

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->ANIMATION_ALPHA:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    add-int/2addr p2, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidth:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iHeight:I

    invoke-static {p1, p2, p3, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->ANIMATION_ALPHA:F

    const v6, 0x3e19999a    # 0.15f

    mul-float v5, v5, v6

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    add-int/lit8 v0, p3, 0x1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v7, v0, v1

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidth:I

    const/4 v9, 0x1

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iHeight:I

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v7, v0, v1

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidth:I

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->ANIMATION_ALPHA:F

    invoke-direct {v0, v3, v3, v3, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iElementsSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->lElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, p2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v4, p3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    mul-int v5, v5, v0

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v5, v5, v0

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->ANIMATION_ALPHA:F

    invoke-virtual {v1, p1, v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public final draw_HoverWithoutAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 9

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->getScrollPosX()I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iHeight:I

    add-int/2addr v1, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p3, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iHeight:I

    sub-int/2addr p3, v1

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    add-int/2addr p2, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidth:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iHeight:I

    invoke-static {p1, p2, p3, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBox_EDGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3e19999a    # 0.15f

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    add-int/lit8 v0, p3, 0x1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v6, v0, v1

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidth:I

    const/4 v8, 0x1

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iHeight:I

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v6, v0, v1

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidth:I

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iElementsSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->lElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v3, p2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v4, p3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    mul-int v5, v5, v0

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v5, v5, v0

    add-int/2addr v4, v5

    invoke-virtual {v1, p1, v3, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected final getScrollPosX()I
    .locals 6

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidthOver:I

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->backAnimation:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->lTime:J

    const-wide/16 v4, 0x5dc

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iScrollPosX:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iScrollPosX:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    neg-int v2, v2

    if-ge v0, v2, :cond_1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->backAnimation:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->backAnimation:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->lTime:J

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->lTime:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iScrollPosX:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iScrollPosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iWidthOver:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    if-le v0, v2, :cond_1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->backAnimation:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->backAnimation:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->lTime:J

    :cond_1
    :goto_0
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->iScrollPosX:I

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
