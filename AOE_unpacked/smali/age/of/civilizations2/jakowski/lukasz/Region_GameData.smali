.class Lage/of/civilizations2/jakowski/lukasz/Region_GameData;
.super Ljava/lang/Object;
.source "Region_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private fB:F

.field private fG:F

.field private fR:F

.field private sName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->sName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final getB()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->fB:F

    return v0
.end method

.method protected final getG()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->fG:F

    return v0
.end method

.method protected final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->sName:Ljava/lang/String;

    return-object v0
.end method

.method protected final getR()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->fR:F

    return v0
.end method

.method protected final setB(F)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->fB:F

    return-void
.end method

.method protected final setG(F)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->fG:F

    return-void
.end method

.method protected final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->sName:Ljava/lang/String;

    return-void
.end method

.method protected final setR(F)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->fR:F

    return-void
.end method
