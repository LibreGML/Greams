.class Lage/of/civilizations2/jakowski/lukasz/AI_Build_Option_Fort;
.super Lage/of/civilizations2/jakowski/lukasz/AI_Build_Option;
.source "AI_Build_Option_Fort.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/AI_Build_Option;-><init>()V

    return-void
.end method


# virtual methods
.method protected getData(I)Lage/of/civilizations2/jakowski/lukasz/AI_Build;
    .locals 3

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/AI_Build_Fort;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/AI_Build_Option_Fort;->getMoney(I)J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/AI_Build_Fort;-><init>(IJ)V

    return-object v0
.end method

.method protected getScore(I)F
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_FORT:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Forts:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result p1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFort_MaxLevel()I

    move-result v2

    mul-int p1, p1, v2

    const/4 v2, 0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    div-int/2addr v1, p1

    int-to-float p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float v0, v0, v1

    return v0
.end method
