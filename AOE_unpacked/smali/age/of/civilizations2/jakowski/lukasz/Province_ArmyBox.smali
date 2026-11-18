.class Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;
.super Ljava/lang/Object;
.source "Province_ArmyBox.java"


# instance fields
.field private iEndPosX:I

.field private iEndPosY:I

.field private iStartPosX:I

.field private iStartPosY:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;->iStartPosX:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;->iStartPosY:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;->iEndPosX:I

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;->iEndPosY:I

    return-void
.end method


# virtual methods
.method protected final getEndPosX()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;->iEndPosX:I

    return v0
.end method

.method protected final getEndPosY()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;->iEndPosY:I

    return v0
.end method

.method protected final getStartPosX()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;->iStartPosX:I

    return v0
.end method

.method protected final getStartPosY()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;->iStartPosY:I

    return v0
.end method
