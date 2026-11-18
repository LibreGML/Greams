.class Lage/of/civilizations2/jakowski/lukasz/AI_Skills_AttackMilitary;
.super Lage/of/civilizations2/jakowski/lukasz/AI_Skills;
.source "AI_Skills_AttackMilitary.java"


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/AI_Skills;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected addPoint_CivID(I)V
    .locals 1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/SkillsManager;->add_AttackBonus(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->skills:Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_ATTACK_BONUS:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Skills_AttackMilitary;->iPoints:I

    return-void
.end method

.method protected getScore_Personality(I)F
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->TECH_ATTACK_BONUS:I

    return p1
.end method
