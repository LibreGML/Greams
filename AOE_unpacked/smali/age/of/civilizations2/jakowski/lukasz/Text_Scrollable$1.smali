.class Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$1;
.super Ljava/lang/Object;
.source "Text_Scrollable.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$DrawText;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw_Element(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 2

    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p5

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->access$000(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)F

    move-result v0

    invoke-virtual {p5, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->getText()Ljava/lang/String;

    move-result-object p5

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->getPosX()I

    move-result v0

    if-eqz p4, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->access$100(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->access$200(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Text$TextPosition;

    invoke-interface {v1}, Lage/of/civilizations2/jakowski/lukasz/Text$TextPosition;->getTextPosition()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    add-int/2addr v0, p2

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->getPosY()I

    move-result p2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->iTextHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    add-int/2addr p2, p3

    iget-object p3, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;

    invoke-virtual {p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-static {p1, p5, v0, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method
