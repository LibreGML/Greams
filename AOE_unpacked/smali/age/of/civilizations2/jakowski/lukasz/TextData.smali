.class Lage/of/civilizations2/jakowski/lukasz/TextData;
.super Ljava/lang/Object;
.source "TextData.java"


# instance fields
.field private iWidth:I

.field private sText:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextData;->sText:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextData;->iWidth:I

    return-void
.end method


# virtual methods
.method protected getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextData;->sText:Ljava/lang/String;

    return-object v0
.end method

.method protected getWidth()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextData;->iWidth:I

    return v0
.end method
