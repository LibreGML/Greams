.class Lage/of/civilizations2/jakowski/lukasz/Point_XY;
.super Ljava/lang/Object;
.source "Point_XY.java"


# instance fields
.field private iPosX:I

.field private iPosY:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->iPosX:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->iPosY:I

    return-void
.end method


# virtual methods
.method protected final getPosX()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->iPosX:I

    return v0
.end method

.method protected final getPosY()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->iPosY:I

    return v0
.end method

.method protected final setPosX(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->iPosX:I

    return-void
.end method

.method protected final setPosY(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->iPosY:I

    return-void
.end method
