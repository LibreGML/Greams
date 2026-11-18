.class Lage/of/civilizations2/jakowski/lukasz/Text_Clear;
.super Lage/of/civilizations2/jakowski/lukasz/Text;
.source "Text_Clear.java"


# instance fields
.field private iLogID:I

.field private iTurnID:I


# direct methods
.method protected constructor <init>(IIIIII)V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Text;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Clear;->iTurnID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Clear;->iLogID:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;->TEXT:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Clear;->typeOfElement:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Clear;->iTurnID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Clear;->iLogID:I

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Text_Clear;->setPosX(I)V

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Text_Clear;->setPosY(I)V

    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/Text_Clear;->setWidth(I)V

    invoke-virtual {p0, p6}, Lage/of/civilizations2/jakowski/lukasz/Text_Clear;->setHeight(I)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Text_Clear;->setText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 0

    return-void
.end method

.method protected getCurrent()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Clear;->iLogID:I

    return v0
.end method

.method protected getTextPos()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Clear;->iTurnID:I

    return v0
.end method
