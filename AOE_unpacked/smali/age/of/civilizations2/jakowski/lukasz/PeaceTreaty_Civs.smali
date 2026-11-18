.class Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;
.super Ljava/lang/Object;
.source "PeaceTreaty_Civs.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected iCivID:I

.field protected lProvincesLost:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected showProvinces:Z


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->showProvinces:Z

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    return-void
.end method


# virtual methods
.method protected final getVictoryPointsTotal()I
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceValue(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
