.class Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;
.super Ljava/lang/Object;
.source "Province_Port_Center.java"


# instance fields
.field protected iShiftX:I

.field protected iShiftY:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->iShiftX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->iShiftY:I

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->iShiftX:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->iShiftY:I

    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .locals 2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->port_ico:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->iShiftX:I

    int-to-float v1, v1

    mul-float v1, v1, p4

    float-to-int v1, v1

    add-int/2addr p2, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->port_ico:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->iShiftY:I

    int-to-float v1, v1

    mul-float v1, v1, p4

    float-to-int p4, v1

    add-int/2addr p3, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->port_ico:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p3, p4

    invoke-virtual {v0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method protected final getShiftX()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->iShiftX:I

    return v0
.end method

.method protected final getShiftY()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->iShiftY:I

    return v0
.end method
