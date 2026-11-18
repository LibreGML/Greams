.class Lage/of/civilizations2/jakowski/lukasz/Button_Icon;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Build;
.source "Button_Icon.java"


# direct methods
.method protected constructor <init>(III)V
    .locals 12

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->iDiploWidth:I

    const-string v1, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v2, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Button_Build;-><init>(Ljava/lang/String;IIIIIIZZIF)V

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 p2, p2, 0x4

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button_Icon;->setHeight(I)V

    return-void
.end method


# virtual methods
.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 2

    :try_start_0
    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Icon;->iImageID:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Icon;->getPosX()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->iDiploWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Icon;->iImageID:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Icon;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Icon;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Icon;->iImageID:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    add-int/2addr p2, p3

    invoke-virtual {p4, p1, v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
