.class Lage/of/civilizations2/jakowski/lukasz/War_Points;
.super Ljava/lang/Object;
.source "War_Points.java"


# instance fields
.field protected iCivID:I

.field protected iMinScore:I

.field protected iNumOfLostProvinces:I

.field protected iPoints:I


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iPoints:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iNumOfLostProvinces:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iMinScore:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iCivID:I

    return-void
.end method


# virtual methods
.method protected addPoints(I)V
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iPoints:I

    add-int/2addr v0, p1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iPoints:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iMinScore:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iMinScore:I

    :cond_0
    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iNumOfLostProvinces:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iNumOfLostProvinces:I

    return-void
.end method

.method protected final getNumOfProvincesTotal()I
    .locals 3

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iNumOfLostProvinces:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
