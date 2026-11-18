.class Lage/of/civilizations2/jakowski/lukasz/AI_ProvinceValue;
.super Ljava/lang/Object;
.source "AI_ProvinceValue.java"


# instance fields
.field protected iProvinceID:I

.field protected iValue:F


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI_ProvinceValue;->iProvinceID:I

    const/4 p1, 0x0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI_ProvinceValue;->iValue:F

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI_ProvinceValue;->iProvinceID:I

    int-to-float p1, p2

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI_ProvinceValue;->iValue:F

    return-void
.end method
