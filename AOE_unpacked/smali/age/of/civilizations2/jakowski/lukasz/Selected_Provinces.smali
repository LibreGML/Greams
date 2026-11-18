.class Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;
.super Ljava/lang/Object;
.source "Selected_Provinces.java"


# instance fields
.field protected backAnimation:Z

.field protected backAnimationBorder:Z

.field protected iAlpha:I

.field protected iBorderAlpha:I

.field private iProvincesSize:I

.field protected iStepID:I

.field protected iStepIDBorder:I

.field private lProvincesID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected lTime:J

.field protected lTimeBorder:J


# direct methods
.method protected constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lTime:J

    const/16 v2, 0x32

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iAlpha:I

    const/4 v2, 0x0

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iStepID:I

    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->backAnimation:Z

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lTimeBorder:J

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iStepIDBorder:I

    const/16 v0, 0xff

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iBorderAlpha:I

    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->backAnimationBorder:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lProvincesID:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final addProvince(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iProvincesSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lProvincesID:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lProvincesID:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lProvincesID:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iProvincesSize:I

    const/4 p1, 0x1

    return p1
.end method

.method protected final canAddArmy(II)Z
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v2

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result p2

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result p2

    if-ne p2, p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected final canBeReleasedAsVassal(II)Z
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    return v1

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-ne v0, p1, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result p2

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method protected final checkIfExists(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iProvincesSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lProvincesID:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final clearSelectedProvinces()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lProvincesID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iProvincesSize:I

    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->update()V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->updateColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iProvincesSize:I

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lProvincesID:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lProvincesID:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->drawProvince_ActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final draw_CreateAVassal(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->update()V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->createVassal_Data:Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->oColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->createVassal_Data:Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->oColor:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->createVassal_Data:Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->oColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iAlpha:I

    int-to-float v4, v4

    const v5, 0x3fcccccd    # 1.6f

    mul-float v4, v4, v5

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iProvincesSize:I

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lProvincesID:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lProvincesID:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->drawProvince_ActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final draw_HolyRomanEmpire(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->update()V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->oColorHRE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->oColorHRE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->oColorHRE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iAlpha:I

    int-to-float v4, v4

    sget-boolean v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->VIEW_SHOW_VALUES:Z

    if-eqz v5, :cond_0

    const/high16 v5, 0x40400000    # 3.0f

    goto :goto_0

    :cond_0
    const v5, 0x4019999a    # 2.4f

    :goto_0
    mul-float v4, v4, v5

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iProvincesSize:I

    if-ge v0, v1, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lProvincesID:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lProvincesID:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->drawProvince_ActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected final getProvince(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lProvincesID:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getProvinces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lProvincesID:Ljava/util/List;

    return-object v0
.end method

.method protected final getProvincesSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iProvincesSize:I

    return v0
.end method

.method protected final popProvince()V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lProvincesID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lProvincesID:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvincesSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->removeProvince(I)Z

    :cond_0
    return-void
.end method

.method protected final removeProvince(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iProvincesSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lProvincesID:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lProvincesID:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lProvincesID:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iProvincesSize:I

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final update()V
    .locals 0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->updateProvinceAlpha()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->updateBorderAlpha()V

    return-void
.end method

.method protected final updateArmies_CivID(II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvince(I)I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->hasArmyInProvince(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvince(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->canAddArmy(II)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvince(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v1

    if-eq p2, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvince(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy(II)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected updateBorderAlpha()V
    .locals 6

    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lTimeBorder:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1e

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iStepIDBorder:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iStepIDBorder:I

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->backAnimationBorder:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iBorderAlpha:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iBorderAlpha:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iBorderAlpha:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iBorderAlpha:I

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lTimeBorder:J

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iStepIDBorder:I

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iStepIDBorder:I

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->backAnimationBorder:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->backAnimationBorder:Z

    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lTimeBorder:J

    iget-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->backAnimationBorder:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0xe1

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x12c

    :goto_1
    add-long/2addr v0, v2

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lTimeBorder:J

    :cond_2
    return-void
.end method

.method protected updateColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iAlpha:I

    int-to-float v1, v1

    const v2, 0x3fcccccd    # 1.6f

    mul-float v1, v1, v2

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected updateProvinceAlpha()V
    .locals 6

    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x19

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iStepID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iStepID:I

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->backAnimation:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iAlpha:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iAlpha:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iAlpha:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iAlpha:I

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lTime:J

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iStepID:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->iStepID:I

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->backAnimation:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->backAnimation:Z

    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lTime:J

    iget-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->backAnimation:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x1c2

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x258

    :goto_1
    add-long/2addr v0, v2

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->lTime:J

    :cond_2
    return-void
.end method
