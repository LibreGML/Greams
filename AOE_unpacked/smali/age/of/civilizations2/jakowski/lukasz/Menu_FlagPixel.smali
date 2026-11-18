.class Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel;
.super Lage/of/civilizations2/jakowski/lukasz/MenuElement;
.source "Menu_FlagPixel.java"


# direct methods
.method protected constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;-><init>()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;->FLAG_PIXEL:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel;->typeOfElement:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel;->setPosX(I)V

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel;->setPosY(I)V

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel;->setWidth(I)V

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel;->setHeight(I)V

    return-void
.end method


# virtual methods
.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    invoke-virtual {v0, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->getR(I)F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    invoke-virtual {v1, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->getG(I)F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    invoke-virtual {v2, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->getB(I)F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    invoke-virtual {v3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->getA(I)F

    move-result p4

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel;->getPosY()I

    move-result p2

    add-int v3, p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
