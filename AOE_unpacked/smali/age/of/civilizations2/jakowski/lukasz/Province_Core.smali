.class Lage/of/civilizations2/jakowski/lukasz/Province_Core;
.super Ljava/lang/Object;
.source "Province_Core.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final NUMBER_OF_TURNS_REQUIRED_TO_GAIN_CORE:I = 0x28

.field protected static final NUMBER_OF_TURNS_REQUIRED_TO_GAIN_CORE_EXTRA_PER_CORE:I = 0xa

.field protected static final NUMBER_OF_TURNS_REQUIRED_TO_GAIN_CORE_WITHOUT_ANY_CORE:I = 0xf

.field private static final serialVersionUID:J


# instance fields
.field private iCivsSize:I

.field private iOwnership_CivsSize:I

.field private lCivs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lOwnership_Civs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lOwnership_NumberOfTurns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lSinceTurnID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iCivsSize:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iOwnership_CivsSize:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lCivs:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lSinceTurnID:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iCivsSize:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_Civs:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_NumberOfTurns:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iOwnership_CivsSize:I

    return-void
.end method

.method private final getIsLargestGroup(II)Z
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNationalitiesSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v2

    if-le v2, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected final addNewCore(II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iCivsSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lCivs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lCivs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lSinceTurnID:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lCivs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iCivsSize:I

    return-void
.end method

.method protected final clearData()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lCivs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lSinceTurnID:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iCivsSize:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_Civs:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_NumberOfTurns:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iOwnership_CivsSize:I

    return-void
.end method

.method protected final getCivID(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lCivs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getCivsSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iCivsSize:I

    return v0
.end method

.method protected final getHaveACore(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final getHaveOwnership(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getOwnership_CivsSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getOwnership_CivID(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final getNumOfOwnership(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getOwnership_CivsSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getOwnership_CivID(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getOwnership_NumOfTurns(I)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final getNumOfTurnsOwnershipToGetACore()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iCivsSize:I

    if-nez v0, :cond_0

    const/16 v0, 0xf

    return v0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivsSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x28

    return v0
.end method

.method protected final getOwnership_CivID(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_Civs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getOwnership_CivsSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iOwnership_CivsSize:I

    return v0
.end method

.method protected final getOwnership_NumOfTurns(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_NumberOfTurns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getSinceTurnID(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lSinceTurnID:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final increaseOwnership(II)V
    .locals 3

    const/4 p2, 0x0

    :goto_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iOwnership_CivsSize:I

    const/4 v1, 0x1

    if-ge p2, v0, :cond_2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_Civs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_NumberOfTurns:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_NumberOfTurns:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getNumOfTurnsOwnershipToGetACore()I

    move-result v0

    if-ne p2, v0, :cond_0

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->addNewCore(II)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_Civs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_NumberOfTurns:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_Civs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iOwnership_CivsSize:I

    return-void
.end method

.method protected final removeCore(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iCivsSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lCivs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lCivs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lSinceTurnID:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lCivs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iCivsSize:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iOwnership_CivsSize:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_Civs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_Civs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_NumberOfTurns:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_Civs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->iOwnership_CivsSize:I

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method protected final resetOwnership(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getOwnership_CivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getOwnership_CivID(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lOwnership_NumberOfTurns:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final setCivID_Editor(II)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->lCivs:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
