.class Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;
.super Ljava/lang/Object;
.source "Province_Border_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
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

.field private withProvinceID:I


# direct methods
.method protected constructor <init>(ILjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->withProvinceID:I

    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->lPointsX:Ljava/util/List;

    iput-object p3, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->lPointsY:Ljava/util/List;

    return-void
.end method


# virtual methods
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

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->lPointsX:Ljava/util/List;

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

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->lPointsY:Ljava/util/List;

    return-object v0
.end method

.method protected final getWithProvinceID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->withProvinceID:I

    return v0
.end method
