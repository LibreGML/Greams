.class Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;
.super Ljava/lang/Object;
.source "MenuElement_Hover_v2_Element_Type_Space.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type;


# static fields
.field private static final sText:Ljava/lang/String; = "-----"


# instance fields
.field private iTextWidth:I


# direct methods
.method protected constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v2, "-----"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;->iTextWidth:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .locals 3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr p3, v0

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f59999a    # 0.85f

    invoke-direct {v0, v1, v1, v1, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const-string p4, "-----"

    invoke-static {p1, p4, p2, p3, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;->iTextWidth:I

    return v0
.end method
