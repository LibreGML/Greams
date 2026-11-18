.class Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;
.super Ljava/lang/Object;
.source "PeaceTreaty_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected TRUCE_LENGTH:I

.field protected WAR_TAG:Ljava/lang/String;

.field protected iWarID:I

.field protected lCivsData_Aggressors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;",
            ">;"
        }
    .end annotation
.end field

.field protected lCivsData_Defenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;",
            ">;"
        }
    .end annotation
.end field

.field protected lCivsDemands_Aggressors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;",
            ">;"
        }
    .end annotation
.end field

.field protected lCivsDemands_Defenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2d

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->TRUCE_LENGTH:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    return-void
.end method
