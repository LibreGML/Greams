# -*- coding: utf-8 -*-
"""A3: occupied tax 10%, recruit 15%, manpower 15%; keep production 10%."""
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


def fix_taxation() -> None:
    p = ROOT / "Game_NextTurnUpdate.smali"
    t = p.read_text(encoding="utf-8")

    t = must_replace(
        t,
        """.method protected final getProvinceIncome_Taxation(IIF)F
    .locals 7

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    invoke-virtual {p3, p2}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getAdministration_Capital(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getProvinceAdministration(II)F

    move-result p1

    return p1

    :cond_0""",
        """.method protected final getProvinceIncome_Taxation(IIF)F
    .locals 8

    move v7, p1

    :cond_0""",
        "taxation occupied early return",
    )

    t = must_replace(
        t,
        """    sget p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->GAME_SPEED:F

    mul-float v0, v0, p1

    return v0
.end method

.method protected final getProvince_EmploymentPopulation(I)I""",
        """    sget p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->GAME_SPEED:F

    mul-float v0, v0, p1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result p1

    if-eqz p1, :cond_occupy_tax_done

    const p1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, p1

    :cond_occupy_tax_done
    return v0
.end method

.method protected final getProvince_EmploymentPopulation(I)I""",
        "taxation occupied 10% scale",
    )

    p.write_text(t, encoding="utf-8")
    print("Game_NextTurnUpdate: occupied tax 10%")


def fix_recruit() -> None:
    p = ROOT / "Game_Action.smali"
    t = p.read_text(encoding="utf-8")
    t = must_replace(
        t,
        """    :cond_4
    return v1
.end method

.method protected final getRecruitableArmyAutoplan(I)I""",
        """    :cond_4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v0

    if-eqz v0, :cond_recruit_occupy_done

    int-to-float v0, v1

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v0, v2

    float-to-int v1, v0

    :cond_recruit_occupy_done
    return v1
.end method

.method protected final getRecruitableArmyAutoplan(I)I""",
        "recruitable 15% occupied",
    )
    p.write_text(t, encoding="utf-8")
    print("Game_Action: recruitable occupied 15%")


def fix_recruit_points() -> None:
    p = ROOT / "Province.smali"
    t = p.read_text(encoding="utf-8")
    t = must_replace(
        t,
        """    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0""",
        """    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0""",
        "buildRecruitableArmyPoints occupied zero",
    )
    p.write_text(t, encoding="utf-8")
    print("Province: recruit points allow occupied (scaled via getRecruitableArmy)")


def fix_manpower() -> None:
    p = ROOT / "Civilization.smali"
    t = p.read_text(encoding="utf-8")
    t = must_replace(
        t,
        """    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected final countRevolutionaryRisks_WithoutOccupied()F""",
        """    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v3

    if-nez v2, :cond_occupy_manpower

    add-int/2addr v1, v3

    goto :cond_0

    :cond_occupy_manpower
    int-to-float v2, v3

    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected final countRevolutionaryRisks_WithoutOccupied()F""",
        "manpower occupied 15%",
    )
    # bump locals 4 -> 5 for v4
    t = must_replace(
        t,
        """.method protected final countPopulation_WithoutOccupied()I
    .locals 4
""",
        """.method protected final countPopulation_WithoutOccupied()I
    .locals 5
""",
        "manpower locals",
    )
    p.write_text(t, encoding="utf-8")
    print("Civilization: manpower counts occupied at 15%")


if __name__ == "__main__":
    fix_taxation()
    fix_recruit()
    fix_recruit_points()
    fix_manpower()
