.class Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;
.super Ljava/lang/Object;
.source "PalletOfCivsColors_Civ_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;


# direct methods
.method protected constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->setColor(Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V

    return-void
.end method


# virtual methods
.method protected final getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    return-object v0
.end method

.method protected final setColor(Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    return-void
.end method
