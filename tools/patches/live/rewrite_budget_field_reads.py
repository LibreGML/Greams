# -*- coding: utf-8 -*-
"""
Replace Civilization money int-field igets with BudgetCore.*Int accessors
(backed by long ledgers). Avoids wide-register allocation hazards.
"""
from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3] / "AOE_unpacked" / "smali" / "age" / "of" / "civilizations2" / "jakowski" / "lukasz"

SKIP = {
    "BudgetCore.smali",
    "Civilization.smali",
}

INT_ACCESSORS = {
    "iBudget": "budgetInt",
    "iIncomeTaxation": "taxInt",
    "iIncomeProduction": "prodInt",
    "iAdministrationCosts": "adminInt",
    "iMilitaryUpkeep_Total": "militaryInt",
}

IGET_RE = re.compile(
    r"^([ \t]*)iget ([vp]\d+), ([vp]\d+), "
    r"Lage/of/civilizations2/jakowski/lukasz/Civilization;->("
    + "|".join(INT_ACCESSORS.keys())
    + r"):I\s*$"
)


def rewrite_file(path: Path) -> int:
    lines = path.read_text(encoding="utf-8").splitlines(keepends=True)
    out: list[str] = []
    changes = 0
    for line in lines:
        m = IGET_RE.match(line.rstrip("\r\n"))
        if not m:
            out.append(line)
            continue
        indent, dest, obj, field = m.groups()
        accessor = INT_ACCESSORS[field]
        out.append(
            f"{indent}invoke-static {{{obj}}}, "
            f"Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->"
            f"{accessor}(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I\n"
        )
        out.append(f"{indent}move-result {dest}\n")
        changes += 1
    if changes:
        path.write_text("".join(out), encoding="utf-8")
    return changes


def main() -> None:
    total = 0
    files = 0
    for path in sorted(ROOT.glob("*.smali")):
        if path.name in SKIP:
            continue
        n = rewrite_file(path)
        if n:
            files += 1
            total += n
            print(f"{path.name}: {n}")
    print(f"TOTAL {total} rewrites in {files} files")


if __name__ == "__main__":
    main()
