# -*- coding: utf-8 -*-
"""Smarter moveAtWar_AttackTo_Score + declare-war army guard."""
from __future__ import annotations

from pathlib import Path

ROOT = (
    Path(__file__).resolve().parents[3]
    / "AOE_unpacked"
    / "smali"
    / "age"
    / "of"
    / "civilizations2"
    / "jakowski"
    / "lukasz"
)


def must_replace(t: str, old: str, new: str, label: str) -> str:
    if old not in t:
        raise SystemExit(f"MISS: {label}")
    return t.replace(old, new, 1)


NEW_SCORE = r""".method protected final moveAtWar_AttackTo_Score(II)F
    .locals 10

    # p1=civId, p2=targetProvinceId
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPotentialModified_WAR_MoveTo(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_adj
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_adj_done

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v3

    if-le v3, v1, :cond_adj_next

    move v1, v3

    :cond_adj_next
    add-int/lit8 v2, v2, 0x1

    goto :goto_adj

    :cond_adj_done
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_def
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v4

    if-ge v3, v4, :cond_def_done

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_def

    :cond_def_done
    int-to-float v3, v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    if-eqz v4, :cond_unowned

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    goto :cond_def_eff

    :cond_unowned
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    :cond_def_eff
    int-to-float v4, v1

    if-lez v1, :cond_has_atk

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    return v0

    :cond_has_atk
    cmpg-float v1, v4, v3

    if-gez v1, :cond_can_win

    const v1, 0x3a83126f    # 0.001f

    mul-float/2addr v0, v1

    return v0

    :cond_can_win
    const v1, 0x3c23d70a    # 0.01f

    add-float v5, v3, v1

    div-float v5, v4, v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v7, v5, v6

    if-gez v7, :cond_odds_lo

    move v5, v6

    :cond_odds_lo
    const/high16 v7, 0x40800000    # 4.0f

    cmpl-float v8, v5, v7

    if-lez v8, :cond_odds_hi

    move v5, v7

    :cond_odds_hi
    mul-float/2addr v0, v5

    const/high16 v5, 0x42c80000    # 100.0f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_weak

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v3

    :cond_weak
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isMovingUnitsToProvinceID(I)Z

    move-result v3

    if-eqz v3, :cond_done

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v3

    :cond_done
    return v0
.end method
"""


def fix_attack_score() -> None:
    p = ROOT / "AI_Style.smali"
    t = p.read_text(encoding="utf-8")
    t = must_replace(
        t,
        """.method protected final moveAtWar_AttackTo_Score(II)F
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPotentialModified_WAR_MoveTo(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method
""",
        NEW_SCORE + "\n",
        "attack to score",
    )
    p.write_text(t, encoding="utf-8")
    print("AI_Style: moveAtWar_AttackTo_Score upgraded")


def fix_declare_war() -> None:
    p = ROOT / "AI_Style.smali"
    t = p.read_text(encoding="utf-8")
    t = must_replace(
        t,
        """    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method protected final diplomacyActions_FormCiv(I)V
""",
        """    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    # army strength guard: if enemy army >> ours, slash score
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfUnits()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfUnits()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    add-float/2addr v2, v3

    div-float/2addr v2, v1

    const/high16 v1, 0x3fc00000    # 1.5f

    cmpl-float v1, v2, v1

    if-lez v1, :cond_dw_ok

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    :cond_dw_ok
    return v0
.end method

.method protected final diplomacyActions_FormCiv(I)V
""",
        "declare war army guard",
    )
    p.write_text(t, encoding="utf-8")
    print("AI_Style: declareWar army guard")


if __name__ == "__main__":
    fix_attack_score()
    fix_declare_war()
