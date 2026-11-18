.class Lage/of/civilizations2/jakowski/lukasz/Undo_AssignProvinceCiv;
.super Ljava/lang/Object;
.source "Undo_AssignProvinceCiv.java"


# instance fields
.field private iCivID:I

.field private iProvinceID:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Undo_AssignProvinceCiv;->iProvinceID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Undo_AssignProvinceCiv;->iCivID:I

    return-void
.end method


# virtual methods
.method protected final getCivID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Undo_AssignProvinceCiv;->iCivID:I

    return v0
.end method

.method protected final getProvinceID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Undo_AssignProvinceCiv;->iProvinceID:I

    return v0
.end method
