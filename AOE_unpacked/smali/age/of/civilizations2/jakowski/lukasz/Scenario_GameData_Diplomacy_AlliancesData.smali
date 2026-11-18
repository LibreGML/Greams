.class Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;
.super Ljava/lang/Object;
.source "Scenario_GameData_Diplomacy_AlliancesData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private lCivs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

.field private sName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->setColor(Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->lCivs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final addCiv(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->lCivs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final getCivs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->lCivs:Ljava/util/List;

    return-object v0
.end method

.method protected final getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    return-object v0
.end method

.method protected final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->sName:Ljava/lang/String;

    return-object v0
.end method

.method protected final setColor(Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    return-void
.end method

.method protected final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->sName:Ljava/lang/String;

    return-void
.end method
