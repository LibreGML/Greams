.class Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay;
.super Ljava/lang/Object;
.source "Flag_Overlay.java"


# instance fields
.field protected Scale:F

.field protected sName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay;->sName:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay;->Scale:F

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay;->sName:Ljava/lang/String;

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay;->Scale:F

    return-void
.end method
