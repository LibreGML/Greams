.class Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
.super Ljava/lang/Object;
.source "Civilization_GameData3.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iB:I

.field private iG:I

.field private iR:I

.field private sCivTag:Ljava/lang/String;

.field protected sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sCivTag:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sCivTag:Ljava/lang/String;

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iR:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iG:I

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iB:I

    return-void
.end method


# virtual methods
.method protected final getB()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iB:I

    return v0
.end method

.method protected final getCivTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sCivTag:Ljava/lang/String;

    return-object v0
.end method

.method protected final getG()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iG:I

    return v0
.end method

.method protected final getR()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iR:I

    return v0
.end method

.method protected final setB(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iB:I

    return-void
.end method

.method protected final setCivTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sCivTag:Ljava/lang/String;

    return-void
.end method

.method protected final setG(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iG:I

    return-void
.end method

.method protected final setR(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->iR:I

    return-void
.end method
