.class Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;
.super Ljava/lang/Object;
.source "PeaceTreaty_DrawData.java"


# instance fields
.field protected iCivID:I

.field protected iProvinceValue:I

.field protected isTaken:I

.field protected isToTake:Z


# direct methods
.method protected constructor <init>(IIZ)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iProvinceValue:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isToTake:Z

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iProvinceValue:I

    iput-boolean p3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isToTake:Z

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    return-void
.end method
