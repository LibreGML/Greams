.class Lage/of/civilizations2/jakowski/lukasz/Province_Border;
.super Ljava/lang/Object;
.source "Province_Border.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;
    }
.end annotation


# instance fields
.field private civilizationBorder:Z

.field protected drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;

.field private iLineWidth:I

.field private iProvinceBorderLineSize:I

.field public lPointsX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field public lPointsY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private provinceBorderLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;",
            ">;"
        }
    .end annotation
.end field

.field private wastelandBorder:Z

.field private withProvinceID:S


# direct methods
.method protected constructor <init>(ILjava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iLineWidth:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->civilizationBorder:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->wastelandBorder:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsX:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsY:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v6

    mul-int v5, v5, v6

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v7

    mul-int v6, v6, v7

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v8

    mul-int v7, v7, v8

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Short;

    invoke-virtual {v8}, Ljava/lang/Short;->shortValue()S

    move-result v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v9

    mul-int v8, v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsX:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsY:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iProvinceBorderLineSize:I

    int-to-short p1, p1

    iput-short p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->withProvinceID:S

    :goto_2
    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iProvinceBorderLineSize:I

    if-ge v0, p1, :cond_2

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iLineWidth:I

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iLineWidth:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)I
    .locals 0

    iget p0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iLineWidth:I

    return p0
.end method


# virtual methods
.method protected final drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iProvinceBorderLineSize:I

    if-ge v0, v1, :cond_0

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v2

    add-int v3, p4, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v2

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v5

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_DASHED_THICKNESS:I

    mul-int v6, v6, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v7

    move-object v2, p1

    move v8, p3

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .locals 10

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iLineWidth:I

    int-to-float v0, v0

    mul-float v0, v0, p4

    float-to-int p4, v0

    const/4 v0, 0x1

    move v9, p3

    const/4 p3, 0x1

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iProvinceBorderLineSize:I

    if-ge v0, v1, :cond_1

    if-gt p3, p4, :cond_1

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v2

    add-int v3, p5, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v2

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v2

    add-int/2addr v2, p3

    if-gt v2, p4, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_0
    sub-int v2, p4, p3

    :goto_1
    move v5, v2

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_DASHED_THICKNESS:I

    mul-int v6, v6, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v7

    move-object v2, p1

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v1

    add-int/2addr v9, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method protected final drawDashedBorder_PercentageWidth_Full_SeaBySea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFILcom/badlogic/gdx/graphics/Color;)V
    .locals 14

    move-object v0, p0

    move-object v9, p1

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iLineWidth:I

    int-to-float v1, v1

    mul-float v1, v1, p4

    float-to-int v10, v1

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iProvinceBorderLineSize:I

    if-ge v1, v3, :cond_1

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-lt v2, v10, :cond_0

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_SEABYSEA:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move v11, v1

    :goto_2
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iProvinceBorderLineSize:I

    if-ge v11, v1, :cond_2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v2

    add-int v3, p5, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v2

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_THICKNESS:I

    mul-int v6, v6, v2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v7

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v1, p6

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move/from16 v13, p3

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iProvinceBorderLineSize:I

    if-ge v11, v1, :cond_4

    if-gt v12, v10, :cond_4

    invoke-static/range {p2 .. p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v2

    add-int v3, p5, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v2

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static/range {p2 .. p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v2

    add-int/2addr v2, v12

    if-gt v2, v10, :cond_3

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v2

    goto :goto_4

    :cond_3
    sub-int v2, v10, v12

    :goto_4
    move v5, v2

    invoke-static/range {p2 .. p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_DASHED_THICKNESS:I

    mul-int v6, v6, v2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v7

    move-object v2, p1

    move v8, v13

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v1

    add-int/2addr v13, v1

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v1

    add-int/2addr v12, v1

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    :cond_4
    return-void
.end method

.method protected final drawDashedBorder_PercentageWidth_Full_Straight(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;II)V
    .locals 15

    move-object v0, p0

    move-object/from16 v9, p1

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iLineWidth:I

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int v10, v1

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iProvinceBorderLineSize:I

    if-ge v1, v3, :cond_1

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-lt v2, v10, :cond_0

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    move-object/from16 v1, p5

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v1, p5

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move v11, v2

    :goto_2
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iProvinceBorderLineSize:I

    if-ge v11, v1, :cond_2

    invoke-static/range {p6 .. p6}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v2

    add-int v3, p3, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v2

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static/range {p6 .. p6}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v5

    invoke-static/range {p6 .. p6}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_THICKNESS:I

    mul-int v6, v6, v2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v7

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v1, p4

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_3
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iProvinceBorderLineSize:I

    if-ge v12, v1, :cond_4

    if-gt v13, v10, :cond_4

    if-ge v12, v11, :cond_4

    invoke-static/range {p7 .. p7}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v2

    add-int v3, p3, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v2

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static/range {p7 .. p7}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v2

    add-int/2addr v2, v13

    if-gt v2, v10, :cond_3

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v2

    goto :goto_4

    :cond_3
    sub-int v2, v10, v13

    :goto_4
    move v5, v2

    invoke-static/range {p7 .. p7}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_THICKNESS:I

    mul-int v6, v6, v2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v7

    move-object/from16 v2, p1

    move v8, v14

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v1

    add-int/2addr v13, v1

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v1

    add-int/2addr v14, v1

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    :cond_4
    return-void
.end method

.method protected final drawDashedBorder_PercentageWidth_Full_Straight(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 14

    move-object v0, p0

    move-object v9, p1

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iLineWidth:I

    int-to-float v1, v1

    mul-float v1, v1, p4

    float-to-int v10, v1

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iProvinceBorderLineSize:I

    if-ge v1, v3, :cond_1

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-lt v2, v10, :cond_0

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    move-object/from16 v1, p7

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v1, p7

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move v11, v2

    :goto_2
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iProvinceBorderLineSize:I

    if-ge v11, v1, :cond_2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v2

    add-int v3, p5, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v2

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_THICKNESS:I

    mul-int v6, v6, v2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v7

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v1, p6

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move/from16 v13, p3

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iProvinceBorderLineSize:I

    if-ge v11, v1, :cond_4

    if-gt v12, v10, :cond_4

    invoke-static/range {p2 .. p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v2

    add-int v3, p5, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v2

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static/range {p2 .. p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v2

    add-int/2addr v2, v12

    if-gt v2, v10, :cond_3

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v2

    goto :goto_4

    :cond_3
    sub-int v2, v10, v12

    :goto_4
    move v5, v2

    invoke-static/range {p2 .. p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_DASHED_THICKNESS:I

    mul-int v6, v6, v2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v7

    move-object v2, p1

    move v8, v13

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v1

    add-int/2addr v13, v1

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v1

    add-int/2addr v12, v1

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    :cond_4
    return-void
.end method

.method protected final drawInnerBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .locals 2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getDashedImage()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    return-void
.end method

.method protected final drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iProvinceBorderLineSize:I

    if-ge v0, v1, :cond_0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v1

    add-int v4, p2, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v5, v1, v3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v6

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_THICKNESS:I

    mul-int v7, v1, v3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v8

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final drawStraightBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V
    .locals 10

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iLineWidth:I

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int p2, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iProvinceBorderLineSize:I

    if-ge v0, v2, :cond_1

    if-gt v1, p2, :cond_1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v2

    add-int v5, p3, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v2

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v6, v2, v4

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    if-gt v2, p2, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_0
    sub-int v2, p2, v1

    :goto_1
    move v7, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_THICKNESS:I

    mul-int v8, v2, v4

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v9

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method protected final drawStraightBorder_PercentageWidth_Full_Dashed(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 14

    move-object v0, p0

    move-object v9, p1

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iLineWidth:I

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int v10, v1

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iProvinceBorderLineSize:I

    if-ge v1, v3, :cond_2

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-lt v2, v10, :cond_1

    if-lez v1, :cond_0

    add-int/lit8 v3, v1, -0x1

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v1

    sub-int/2addr v2, v1

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v1

    sub-int v1, v2, v1

    move v2, v1

    move-object/from16 v1, p5

    goto :goto_2

    :cond_0
    move-object/from16 v1, p5

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v1, p5

    :goto_1
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move v13, v2

    move v12, v3

    :goto_3
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iProvinceBorderLineSize:I

    if-ge v12, v1, :cond_3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getDashedImage()I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v2

    add-int v3, p3, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v2

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getDashedImage()I

    move-result v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getDashedImage()I

    move-result v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_DASHED_THICKNESS:I

    mul-int v6, v6, v2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v7

    move-object v2, p1

    move v8, v13

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v1

    add-int/2addr v13, v1

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v1, p4

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v8, 0x0

    :goto_4
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iProvinceBorderLineSize:I

    if-ge v11, v1, :cond_5

    if-gt v8, v10, :cond_5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result v2

    add-int v3, p3, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v2

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v2

    add-int/2addr v2, v8

    if-gt v2, v10, :cond_4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v2

    goto :goto_5

    :cond_4
    sub-int v2, v10, v8

    :goto_5
    move v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_THICKNESS:I

    mul-int v6, v6, v2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v7

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v1

    add-int/2addr v8, v1

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    :cond_5
    return-void
.end method

.method protected final drawStraightBorder_PercentageWidth_Full_Straight(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 9

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iLineWidth:I

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int p2, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iProvinceBorderLineSize:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-lt v2, p2, :cond_0

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_2
    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iProvinceBorderLineSize:I

    if-ge v1, p5, :cond_2

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result p5

    add-int v4, p3, p5

    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result p5

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v3

    add-int/2addr p5, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v5, p5, v3

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result v6

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_THICKNESS:I

    mul-int v7, p5, v3

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v8

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 p4, 0x0

    :goto_3
    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iProvinceBorderLineSize:I

    if-ge v0, p5, :cond_4

    if-gt p4, p2, :cond_4

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosX()I

    move-result p5

    add-int v3, p3, p5

    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result p5

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getPosY()I

    move-result v2

    add-int/2addr p5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, p5, v2

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result p5

    add-int/2addr p5, p4

    if-gt p5, p2, :cond_3

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result p5

    goto :goto_4

    :cond_3
    sub-int p5, p2, p4

    :goto_4
    move v5, p5

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_THICKNESS:I

    mul-int v6, p5, v2

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getAngle()F

    move-result v7

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->provinceBorderLine:Ljava/util/List;

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_Line;->getWidth()I

    move-result p5

    add-int/2addr p4, p5

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_4
    return-void
.end method

.method protected final getDashedImage()I
    .locals 1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32:I

    return v0
.end method

.method protected final getIsCivilizationBorder()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->civilizationBorder:Z

    return v0
.end method

.method protected final getIsWastelandBorder()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->wastelandBorder:Z

    return v0
.end method

.method protected final getWithProvinceID()I
    .locals 1

    iget-short v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->withProvinceID:S

    return v0
.end method

.method protected final setIsCivilizationBorder(ZI)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->civilizationBorder:Z

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->updateDrawProvinceBorder(I)V

    return-void
.end method

.method protected final setIsCivilizationBorder_Just(ZI)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->civilizationBorder:Z

    return-void
.end method

.method protected final setIsCivilizationBorder_OwnerAnimation(ZI)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->updateDrawProvinceBorder_OwnerAnimation(ZI)V

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->civilizationBorder:Z

    return-void
.end method

.method protected final setIsWastelandBorder(ZI)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->wastelandBorder:Z

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->updateDrawProvinceBorder(I)V

    return-void
.end method

.method protected final updateDrawProvinceBorder(I)V
    .locals 2

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-short v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->withProvinceID:S

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v0

    if-ltz v0, :cond_4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-short v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->withProvinceID:S

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v0

    if-gez v0, :cond_4

    :cond_1
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->wastelandBorder:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->civilizationBorder:Z

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->wastelandBorder:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->civilizationBorder:Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    :cond_4
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getIsWastelandBorder()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getIsCivilizationBorder()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Province_Border$1;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;

    goto :goto_2

    :cond_5
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Province_Border$2;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getIsCivilizationBorder()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Province_Border$3;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;

    goto :goto_2

    :cond_7
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->updateDrawProvinceBorder_Inner(I)V
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_2
    return-void
.end method

.method protected final updateDrawProvinceBorderSeaBySea()V
    .locals 1

    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$8;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final updateDrawProvinceBorder_Active()V
    .locals 1

    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$12;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final updateDrawProvinceBorder_ActiveDashed()V
    .locals 1

    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$13;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final updateDrawProvinceBorder_ActiveLandBySea_Percentage()V
    .locals 1

    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$18;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$18;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final updateDrawProvinceBorder_ActiveSea()V
    .locals 1

    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$15;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final updateDrawProvinceBorder_ActiveSeaBySea_Percentage()V
    .locals 1

    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$17;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$17;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final updateDrawProvinceBorder_ActiveSea_Dashed()V
    .locals 1

    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$16;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$16;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final updateDrawProvinceBorder_Active_Percentage()V
    .locals 1

    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$14;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final updateDrawProvinceBorder_CivilizationRegion()V
    .locals 1

    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$10;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final updateDrawProvinceBorder_CivilizationRegion2()V
    .locals 1

    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$11;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final updateDrawProvinceBorder_Inner(I)V
    .locals 0

    :try_start_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-boolean p1, p1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->ENABLE_INNER_BORDERS:Z

    if-eqz p1, :cond_0

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Province_Border$6;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;

    goto :goto_0

    :cond_0
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Province_Border$7;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method protected final updateDrawProvinceBorder_MoveUnits()V
    .locals 1

    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$19;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$19;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final updateDrawProvinceBorder_MoveUnits_Percentage()V
    .locals 1

    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$20;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$20;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final updateDrawProvinceBorder_MoveUnits_Percentage_LandBySea()V
    .locals 1

    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$22;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$22;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final updateDrawProvinceBorder_MoveUnits_Percentage_Sea()V
    .locals 1

    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$23;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$23;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final updateDrawProvinceBorder_MoveUnits_Sea()V
    .locals 1

    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$21;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$21;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final updateDrawProvinceBorder_OwnerAnimation(ZI)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getIsWastelandBorder()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->updateDrawProvinceBorder(I)V

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->civilizationBorder:Z
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "_"

    const-string v2, ""

    if-ne p1, v0, :cond_1

    :try_start_1
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->updateDrawProvinceBorder(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_ANIMATION_TIME:Ljava/util/HashMap;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iLineWidth:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iProvinceBorderLineSize:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->civilizationBorder:Z

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->updateDrawProvinceBorder(I)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_ANIMATION_TIME:Ljava/util/HashMap;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iLineWidth:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Province_Border$4;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;

    goto :goto_0

    :cond_3
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_ANIMATION_TIME:Ljava/util/HashMap;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->iLineWidth:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Province_Border$5;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method protected final updateDrawProvinceBorder_SelectedProvinces()V
    .locals 1

    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$9;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
