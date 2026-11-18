.class Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;
.super Ljava/lang/Object;
.source "Construction_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected constructionType:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

.field protected iNumOfTurnsLeft:I

.field protected iProvinceID:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ConstructionType;->PORT:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;->constructionType:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;->iProvinceID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;->iNumOfTurnsLeft:I

    return-void
.end method


# virtual methods
.method protected onConstructed(I)V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;->iProvinceID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;->iProvinceID:I

    invoke-static {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->buildPort(II)Z

    :cond_0
    return-void
.end method
