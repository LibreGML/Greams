# -*- coding: utf-8 -*-
"""
Replace getIncome(F)/getExpenses(F) float-to-int subtract patterns with getBalanceLong.
"""
from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3] / "AOE_unpacked" / "smali" / "age" / "of" / "civilizations2" / "jakowski" / "lukasz"

# Matches a common anti-pattern used for iBalance:
#   invoke-virtual {NTU, CIV}, getIncome(I)F
#   move-result REG_A
#   float-to-int REG_A, REG_A
#   ... getExpenses ...
#   float-to-int REG_B
#   sub-int REG_A, REG_B
PATTERN = re.compile(
    r"invoke-virtual \{([vp]\d+), ([vp]\d+)\}, "
    r"Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getIncome\(I\)F\s*\n"
    r"\s*move-result ([vp]\d+)\s*\n"
    r"\s*float-to-int \3, \3\s*\n"
    r"(?P<mid>.*?)"
    r"invoke-virtual \{([vp]\d+), ([vp]\d+)\}, "
    r"Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getExpenses\(I\)F\s*\n"
    r"\s*move-result ([vp]\d+)\s*\n"
    r"\s*float-to-int \7, \7\s*\n"
    r"\s*sub-int/2addr \3, \7",
    re.DOTALL,
)


def rewrite(text: str) -> tuple[str, int]:
    count = 0

    def repl(m: re.Match) -> str:
        nonlocal count
        ntu, civ = m.group(1), m.group(2)
        dest = m.group(3)
        mid = m.group("mid")
        # Keep mid (often reloads ntu/civ into other regs). Use original ntu/civ for balanceLong.
        # After mid, expense ntu/civ may differ — prefer last loaded. Safer: call balanceLong with
        # the expense invoke's ntu/civ (groups 5,6) which is closest to the subtract.
        ntu2, civ2 = m.group(5), m.group(6)
        count += 1
        return (
            f"{mid}"
            f"invoke-virtual {{{ntu2}, {civ2}}}, "
            f"Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getBalanceLong(I)J\n"
            f"\n"
            f"    move-result-wide v14\n"
            f"\n"
            f"    invoke-static {{v14}}, "
            f"Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toIntSaturated(J)I\n"
            f"\n"
            f"    move-result {dest}"
        )

    # v14 may not exist — too dangerous for auto rewrite.
    return text, 0


def main() -> None:
    # Manual-safe: only report candidates
    total = 0
    for path in sorted(ROOT.glob("*.smali")):
        text = path.read_text(encoding="utf-8")
        if "getIncome(I)F" in text and "getExpenses(I)F" in text and "sub-int" in text:
            n = text.count("getIncome(I)F")
            print(f"CANDIDATE {path.name} incomeF={n}")
            total += 1
    print(f"files {total}")


if __name__ == "__main__":
    main()
