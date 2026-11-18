.class Lage/of/civilizations2/jakowski/lukasz/AI_ProvinceInfo;
.super Ljava/lang/Object;
.source "AI_ProvinceInfo.java"


# instance fields
.field protected iProvinceID:I

.field protected iRecruitable:I

.field protected iValue:F


# direct methods
.method protected constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI_ProvinceInfo;->iProvinceID:I

    int-to-float p1, p2

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI_ProvinceInfo;->iValue:F

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/AI_ProvinceInfo;->iRecruitable:I

    return-void
.end method
