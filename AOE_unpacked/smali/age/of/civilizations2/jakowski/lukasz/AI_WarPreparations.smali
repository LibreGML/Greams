.class Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;
.super Ljava/lang/Object;
.source "AI_WarPreparations.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected declareWar:Z

.field protected iLeaderCivID:I

.field protected iNumOfTurnsLeft:I

.field protected onCivID:I


# direct methods
.method protected constructor <init>(IIZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;->iLeaderCivID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;->iNumOfTurnsLeft:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;->declareWar:Z

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;->onCivID:I

    iput-boolean p3, p0, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;->declareWar:Z

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;->iLeaderCivID:I

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;->iNumOfTurnsLeft:I

    return-void
.end method
