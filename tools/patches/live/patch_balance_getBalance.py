# -*- coding: utf-8 -*-
"""Replace getIncome/getExpenses float-to-int subtract with getBalance(I)I."""
from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3] / "AOE_unpacked" / "smali" / "age" / "of" / "civilizations2" / "jakowski" / "lukasz"

FILES = [
    "Text_ActionInfo_Cost_Right_Balance.smali",
    "Text_ActionInfo_Cost_Right_Balance_Disband.smali",
]

# Flexible whitespace pattern for the classic collapse
PAT = re.compile(
    r"invoke-virtual \{([vp]\d+), ([vp]\d+)\}, "
    r"Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getIncome\(I\)F\r?\n"
    r"[ \t]*move-result ([vp]\d+)\r?\n"
    r"[ \t]*float-to-int \3, \3\r?\n"
    r"([ \t]*\r?\n)?"
    r"[ \t]*sget-object ([vp]\d+), Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:"
    r"Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;\r?\n"
    r"[ \t]*sget-object ([vp]\d+), Lage/of/civilizations2/jakowski/lukasz/CFG;->game:"
    r"Lage/of/civilizations2/jakowski/lukasz/Game;\r?\n"
    r"[ \t]*sget ([vp]\d+), Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I\r?\n"
    r"[ \t]*invoke-virtual \{\6, \7\}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer\(I\)"
    r"Lage/of/civilizations2/jakowski/lukasz/Player;\r?\n"
    r"[ \t]*move-result-object \6\r?\n"
    r"[ \t]*invoke-virtual \{\6\}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID\(\)I\r?\n"
    r"[ \t]*move-result \6\r?\n"
    r"[ \t]*invoke-virtual \{\5, \6\}, "
    r"Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getExpenses\(I\)F\r?\n"
    r"[ \t]*move-result ([vp]\d+)\r?\n"
    r"[ \t]*float-to-int \8, \8\r?\n"
    r"[ \t]*sub-int/2addr \3, \8",
)


def main() -> None:
    for name in FILES:
        path = ROOT / name
        text = path.read_text(encoding="utf-8")

        def repl(m: re.Match) -> str:
            ntu, civ, dest = m.group(1), m.group(2), m.group(3)
            return (
                f"invoke-virtual {{{ntu}, {civ}}}, "
                f"Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getBalance(I)I\n"
                f"\n"
                f"    move-result {dest}"
            )

        new, n = PAT.subn(repl, text)
        # Also handle constructor variant where first ntu is p2 and expense reloads differently
        print(f"{name}: patternA={n}")
        if n:
            path.write_text(new, encoding="utf-8")
            text = new

        # Broader fallback: any incomeF ... expensesF ... sub-int of those two results
        # Hand-patch remaining by counting
        if "getIncome(I)F" in text:
            print(f"  still has getIncome F: {text.count('getIncome(I)F')}")


if __name__ == "__main__":
    main()
