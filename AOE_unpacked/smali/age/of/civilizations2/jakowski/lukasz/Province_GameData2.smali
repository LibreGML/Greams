.class Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;
.super Ljava/lang/Object;
.source "Province_GameData2.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iLevelOfPort:I

.field protected iPort_ShiftX:I

.field protected iPort_ShiftY:I

.field private lNeighboringProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private lNeighboringSeaProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private lPointsX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private lPointsY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private lProvinceBorder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;",
            ">;"
        }
    .end annotation
.end field

.field protected provinceInfo:Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->provinceInfo:Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->iPort_ShiftX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->iPort_ShiftY:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lPointsX:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lPointsY:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lProvinceBorder:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lNeighboringProvinces:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lNeighboringSeaProvinces:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->provinceInfo:Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->iPort_ShiftX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->iPort_ShiftY:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->iLevelOfPort:I

    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lPointsX:Ljava/util/List;

    iput-object p3, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lPointsY:Ljava/util/List;

    iput-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lProvinceBorder:Ljava/util/List;

    iput-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lNeighboringProvinces:Ljava/util/List;

    iput-object p6, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lNeighboringSeaProvinces:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final getLevelOfPort()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->iLevelOfPort:I

    return v0
.end method

.method protected final getNeighboringProvinces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lNeighboringProvinces:Ljava/util/List;

    return-object v0
.end method

.method protected final getNeighboringSeaProvinces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lNeighboringSeaProvinces:Ljava/util/List;

    return-object v0
.end method

.method protected final getPointsX()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lPointsX:Ljava/util/List;

    return-object v0
.end method

.method protected final getPointsY()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lPointsY:Ljava/util/List;

    return-object v0
.end method

.method protected final getProvinceBorder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->lProvinceBorder:Ljava/util/List;

    return-object v0
.end method
