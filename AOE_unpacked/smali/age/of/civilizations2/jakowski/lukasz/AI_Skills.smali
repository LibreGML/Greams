.class Lage/of/civilizations2/jakowski/lukasz/AI_Skills;
.super Ljava/lang/Object;
.source "AI_Skills.java"


# instance fields
.field protected iPoints:I

.field protected iPointsMax:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Skills;->iPoints:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Skills;->iPointsMax:I

    return-void
.end method


# virtual methods
.method protected addPoint_CivID(I)V
    .locals 1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/SkillsManager;->add_PopGrowth(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->skills:Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_POP_GROWTH:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Skills;->iPoints:I

    return-void
.end method

.method protected getScore(I)F
    .locals 2

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/AI_Skills;->getScore_Personality(I)F

    move-result p1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Skills;->iPoints:I

    int-to-float v0, v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Skills;->iPointsMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    mul-float p1, p1, v1

    return p1
.end method

.method protected getScore_Personality(I)F
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->TECH_POP:F

    return p1
.end method
