.class Lage/of/civilizations2/jakowski/lukasz/Civilization_Region_Style;
.super Ljava/lang/Object;
.source "Civilization_Region_Style.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected updatePB(II)V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->updateDrawProvinceBorder_CivilizationRegion()V

    return-void
.end method
