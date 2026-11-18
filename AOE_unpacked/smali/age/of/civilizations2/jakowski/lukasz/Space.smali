.class Lage/of/civilizations2/jakowski/lukasz/Space;
.super Lage/of/civilizations2/jakowski/lukasz/MenuElement;
.source "Space.java"


# direct methods
.method protected constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;-><init>()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;->SPACE:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Space;->typeOfElement:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Space;->setPosX(I)V

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Space;->setPosY(I)V

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Space;->setWidth(I)V

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Space;->setHeight(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Space;->setClickable(Z)V

    return-void
.end method
