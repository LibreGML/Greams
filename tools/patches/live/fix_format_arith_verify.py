# -*- coding: utf-8 -*-
"""Revert BudgetCore.format* back to int APIs when the result is used arithmetically."""
from __future__ import annotations

import re
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

CIV_REVERT = {
    "formatMoneyOfAdmin": "adminInt",
    "formatMoneyOfTax": "taxInt",
    "formatMoneyOfProd": "prodInt",
    "formatMoneyOfBudget": "budgetInt",
    "formatMoneyOfMilitary": "militaryInt",
}

INT_OPS = re.compile(
    r"\b(neg-int|add-int|sub-int|mul-int|div-int|rem-int|rsub-int|"
    r"and-int|or-int|xor-int|shl-int|shr-int|ushr-int|"
    r"if-(?:eq|ne|lt|ge|gt|le)z?|"
    r"int-to-long|int-to-float|int-to-double)\b"
)


def uses_as_int(lines: list[str], start: int, reg: str, window: int = 80) -> bool:
    for j in range(start, min(start + window, len(lines))):
        line = lines[j]
        stripped = line.strip()
        if stripped.startswith(".end method") or stripped.startswith(".method"):
            break
        if re.search(
            rf"(?:move-result(?:-object|-wide)?|const(?:/4|/16|/high16)?)\s+{re.escape(reg)}\b",
            line,
        ):
            break
        if re.search(rf"move(?:-object|-wide)?(?:/from16|/16)?\s+{re.escape(reg)},", line):
            break
        if INT_OPS.search(line) and re.search(rf"\b{re.escape(reg)}\b", line):
            return True
        if "Ljava/lang/Math;->abs(I)I" in line and reg in line:
            return True
        if "Ljava/lang/Integer;->valueOf(I)" in line and reg in line:
            return True
        if (
            "Ljava/lang/StringBuilder;->append(I)" in line
            and re.search(rf"\{{[^,]+,\s*{re.escape(reg)}\}}", line)
        ):
            return True
    return False


def fix_file(path: Path) -> int:
    lines = path.read_text(encoding="utf-8").splitlines(keepends=True)
    changed = 0
    i = 0
    while i < len(lines):
        m = re.match(
            r"^([ \t]*)invoke-static \{([^}]+)\}, "
            r"Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->"
            r"(formatMoneyOf\w+|formatIncome|formatExpenses)"
            r"\(([^)]+)\)Ljava/lang/String;\s*$",
            lines[i].rstrip("\r\n"),
        )
        if not m:
            i += 1
            continue
        indent, args, fname = m.group(1), m.group(2), m.group(3)
        if i + 1 >= len(lines):
            i += 1
            continue
        m2 = re.match(
            r"^[ \t]*move-result-object ([vp]\d+)\s*$",
            lines[i + 1].rstrip("\r\n"),
        )
        if not m2:
            i += 1
            continue
        reg = m2.group(1)
        if not uses_as_int(lines, i + 2, reg):
            i += 1
            continue

        if fname in CIV_REVERT:
            new_name = CIV_REVERT[fname]
            lines[i] = (
                f"{indent}invoke-static {{{args}}}, "
                f"Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->{new_name}"
                f"(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I\n"
            )
            lines[i + 1] = f"{indent}move-result {reg}\n"
            changed += 1
        elif fname in ("formatIncome", "formatExpenses"):
            parts = [a.strip() for a in args.split(",")]
            ntu, civ = parts[0], parts[1]
            method = "getIncome" if fname == "formatIncome" else "getExpenses"
            lines[i] = (
                f"{indent}invoke-virtual {{{ntu}, {civ}}}, "
                f"Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;"
                f"->{method}(I)F\n"
            )
            lines[i + 1] = f"{indent}move-result {reg}\n"
            nxt = lines[i + 2].strip() if i + 2 < len(lines) else ""
            if not nxt.startswith(f"float-to-int {reg}"):
                lines.insert(i + 2, f"{indent}float-to-int {reg}, {reg}\n")
            changed += 1
        i += 1

    if changed:
        path.write_text("".join(lines), encoding="utf-8")
    return changed


def remaining_bad() -> list[str]:
    bad: list[str] = []
    for p in ROOT.glob("*.smali"):
        lines = p.read_text(encoding="utf-8").splitlines()
        for i, line in enumerate(lines):
            if "BudgetCore;->format" not in line:
                continue
            if i + 1 >= len(lines):
                continue
            m = re.search(r"move-result-object (v\d+)", lines[i + 1])
            if not m:
                continue
            reg = m.group(1)
            for j in range(i + 2, min(i + 40, len(lines))):
                if re.search(rf"(add-int|sub-int|mul-int|div-int|neg-int).*\b{reg}\b", lines[j]):
                    bad.append(f"{p.name}:{i + 1}")
                    break
                if lines[j].startswith(".end method"):
                    break
    return bad


def main() -> None:
    total = 0
    for path in sorted(ROOT.glob("*.smali")):
        n = fix_file(path)
        if n:
            print(f"{path.name}: reverted {n}")
            total += n
    print(f"TOTAL {total}")
    bad = remaining_bad()
    print("REMAINING BAD:", bad if bad else "none")


if __name__ == "__main__":
    main()
