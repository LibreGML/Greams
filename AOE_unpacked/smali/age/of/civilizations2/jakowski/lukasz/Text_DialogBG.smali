.class Lage/of/civilizations2/jakowski/lukasz/Text_DialogBG;
.super Lage/of/civilizations2/jakowski/lukasz/Text;
.source "Text_DialogBG.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Text;-><init>()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;->TEXT:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_DialogBG;->typeOfElement:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Text_DialogBG;->setPosX(I)V

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Text_DialogBG;->setPosY(I)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Text_DialogBG;->setText(Ljava/lang/String;)V

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Text_DialogBG$1;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Text_DialogBG$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Text_DialogBG;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_DialogBG;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Text$TextPosition;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIIII)V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Text;-><init>()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;->TEXT:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_DialogBG;->typeOfElement:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Text_DialogBG;->iTextPositionX:I

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Text_DialogBG;->setPosX(I)V

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Text_DialogBG;->setPosY(I)V

    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/Text_DialogBG;->setWidth(I)V

    invoke-virtual {p0, p6}, Lage/of/civilizations2/jakowski/lukasz/Text_DialogBG;->setHeight(I)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Text_DialogBG;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_DialogBG;->updateTextPosition()V

    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Text;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    return-void
.end method
