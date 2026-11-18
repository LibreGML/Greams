.class Lage/of/civilizations2/jakowski/lukasz/Province_Population;
.super Ljava/lang/Object;
.source "Province_Population.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iNationalitiesSize:I

.field private iPopulation:I

.field private lNationalities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iNationalitiesSize:I

    return-void
.end method


# virtual methods
.method protected final clearData()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iNationalitiesSize:I

    return-void
.end method

.method protected final getCivID(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->getCivID()I

    move-result v0

    return v0
.end method

.method protected final getNational(I)Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    return-object v0
.end method

.method protected final getNationalitiesSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iNationalitiesSize:I

    return v0
.end method

.method protected final getPopulation()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    return v0
.end method

.method protected final getPopulationID(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->getPopulation()I

    move-result v0

    return v0
.end method

.method protected final getPopulationOfCivID(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iNationalitiesSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->getCivID()I

    move-result v1

    if-eq v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->getPopulation()I

    move-result v1

    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setPopulation(I)V
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    sub-int/2addr v0, p1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    return-void
.end method

.method protected final setPopulationOfCivID(II)Z
    .locals 5

    const/16 v4, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iNationalitiesSize:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->getCivID()I

    move-result v1

    if-eq v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-gtz p2, :cond_2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->getPopulation()I

    move-result v1

    sub-int v1, v3, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iNationalitiesSize:I

    move v1, v2

    :goto_1
    return v1

    :cond_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->setPopulaton(I)V

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    :goto_2
    move v1, v3

    goto :goto_1

    :cond_2
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->getPopulation()I

    move-result v1

    sub-int v1, v2, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    add-int/2addr v1, p2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    invoke-virtual {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->setPopulaton(I)V

    goto :goto_2

    :cond_3
    if-lez p2, :cond_4

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    invoke-direct {v2, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    add-int/2addr v1, p2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iNationalitiesSize:I

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method protected final updatePopulationOfProvince()V
    .locals 3

    const/4 v1, 0x0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iNationalitiesSize:I

    if-ge v0, v1, :cond_0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->lNationalities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->getPopulation()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->iPopulation:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
