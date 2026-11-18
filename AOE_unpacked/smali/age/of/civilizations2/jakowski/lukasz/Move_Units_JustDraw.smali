.class Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;
.super Ljava/lang/Object;
.source "Move_Units_JustDraw.java"


# instance fields
.field protected iCivID:I

.field protected moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;


# direct methods
.method protected constructor <init>(ILage/of/civilizations2/jakowski/lukasz/Move_Units;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->iCivID:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->iCivID:I

    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    return-void
.end method
