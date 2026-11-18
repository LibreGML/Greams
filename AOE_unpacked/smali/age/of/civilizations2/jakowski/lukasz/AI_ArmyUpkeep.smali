.class Lage/of/civilizations2/jakowski/lukasz/AI_ArmyUpkeep;
.super Ljava/lang/Object;
.source "AI_ArmyUpkeep.java"


# instance fields
.field protected fScore:F

.field protected iCost:I

.field protected iProvinceID:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI_ArmyUpkeep;->fScore:F

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/AI_ArmyUpkeep;->iProvinceID:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    invoke-virtual {v0, p2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getMilitaryUpkeep(II)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI_ArmyUpkeep;->iCost:I

    return-void
.end method
