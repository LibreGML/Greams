.class Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;
.super Ljava/lang/Object;
.source "PeaceTreaty_Demands.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected iCivID:I

.field protected iPaysWarReparationsToCivID:I

.field protected iTotalNumOfVicotryPoints:I

.field protected iVictoryPointsLeft:I

.field protected iWillBecomeVassalOfCivID:I

.field protected lDemands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected lReleasableCivs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;",
            ">;"
        }
    .end annotation
.end field

.field protected lReleasableCivs_TakeControl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals_TakeConrol;",
            ">;"
        }
    .end annotation
.end field

.field protected lWarReparationsFromCivsID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected lWillVassalizeCivsID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected peaceTreatyAccepted:Z


# direct methods
.method protected constructor <init>(II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->peaceTreatyAccepted:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iTotalNumOfVicotryPoints:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lWarReparationsFromCivsID:Ljava/util/List;

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iPaysWarReparationsToCivID:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lWillVassalizeCivsID:Ljava/util/List;

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iWillBecomeVassalOfCivID:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs_TakeControl:Ljava/util/List;

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    return-void
.end method


# virtual methods
.method protected final addDemandOnProvince(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected final addReleaseVassal_TakeControl(II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs_TakeControl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs_TakeControl:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals_TakeConrol;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals_TakeConrol;->iFromCivID:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs_TakeControl:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals_TakeConrol;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals_TakeConrol;->iVassalCivID:I

    if-ne v1, p2, :cond_0

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs_TakeControl:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals_TakeConrol;

    invoke-direct {v2, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals_TakeConrol;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected final addWarReparationsFromCivID(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lWarReparationsFromCivsID:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lWarReparationsFromCivsID:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lWarReparationsFromCivsID:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected final addWillVassalizeCivID(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lWillVassalizeCivsID:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lWarReparationsFromCivsID:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lWillVassalizeCivsID:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected final removeDemandOnProvince(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final removeReleaseVassal_TakeControl(II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs_TakeControl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs_TakeControl:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals_TakeConrol;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals_TakeConrol;->iFromCivID:I

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs_TakeControl:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals_TakeConrol;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals_TakeConrol;->iVassalCivID:I

    if-ne v1, p2, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs_TakeControl:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final removeWarReparationsFromCivID(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lWarReparationsFromCivsID:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lWarReparationsFromCivsID:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lWarReparationsFromCivsID:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final removeWillVassalizeCivID(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lWillVassalizeCivsID:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lWillVassalizeCivsID:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lWillVassalizeCivsID:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
