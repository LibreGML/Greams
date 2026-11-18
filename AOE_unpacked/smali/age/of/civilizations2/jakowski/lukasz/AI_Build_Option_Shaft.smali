.class Lage/of/civilizations2/jakowski/lukasz/AI_Build_Option_Shaft;
.super Lage/of/civilizations2/jakowski/lukasz/AI_Build_Option;
.source "AI_Build_Option_Shaft.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/AI_Build_Option;-><init>()V

    return-void
.end method


# virtual methods
.method protected getData(I)Lage/of/civilizations2/jakowski/lukasz/AI_Build;
    .locals 4

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/AI_Build_Shaft;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/AI_Build_Option_Shaft;->getMoney(I)J

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/AI_Build_Shaft;-><init>(IJ)V

    return-object v0
.end method

.method protected getScore(I)F
    .locals 5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_SHAFT:F

    const/high16 v1, 0x3f800000    # 1.0f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Shafts:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Shaft;->getShaft_MaxLevel()I

    move-result v4

    mul-int/2addr v3, v4

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method
