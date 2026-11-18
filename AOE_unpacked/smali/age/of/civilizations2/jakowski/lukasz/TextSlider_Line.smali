.class Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line;
.super Ljava/lang/Object;
.source "TextSlider_Line.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;
    }
.end annotation


# instance fields
.field private align:Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;

.field private iHeight:I

.field private lText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;IILage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;F)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line;->lText:Ljava/util/List;

    iput-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line;->align:Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;

    const-string p4, " "

    invoke-virtual {p1, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p1, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    mul-float v4, v4, p5

    float-to-int v4, v4

    add-int/2addr v2, v4

    if-ge v2, p2, :cond_0

    add-int/lit8 v4, v0, -0x1

    if-ne v1, v4, :cond_4

    if-ge v2, p2, :cond_4

    :cond_0
    const-string v4, ""

    :goto_1
    add-int/lit8 v5, v0, -0x1

    if-ne v1, v5, :cond_1

    if-ge v2, p2, :cond_1

    move v6, v0

    goto :goto_2

    :cond_1
    move v6, v1

    :goto_2
    if-ge v3, v6, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v3

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line;->lText:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lt v2, p2, :cond_3

    if-ne v1, v5, :cond_3

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line;->lText:Ljava/util/List;

    aget-object v3, p1, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    mul-float v2, v2, p5

    float-to-int v2, v2

    move v3, v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line;->lText:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-float p1, p1

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float p2, p2

    mul-float p2, p2, p5

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    int-to-float p4, p4

    add-float/2addr p2, p4

    mul-float p1, p1, p2

    int-to-float p2, p3

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line;->iHeight:I

    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILcom/badlogic/gdx/graphics/Color;)V
    .locals 4

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line;->lText:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line;->lText:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    mul-int v2, v2, v0

    add-int/2addr v2, p3

    invoke-static {p1, v1, p2, v2, p5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final getHeight()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line;->iHeight:I

    return v0
.end method

.method protected final setHeight(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line;->iHeight:I

    return-void
.end method
