# -*- coding: utf-8 -*-
"""Strict audit of BudgetCore money-display / arithmetic smali patches."""
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

STRING_RET = re.compile(
    r"BudgetCore;->(format\w+)\([^)]*\)Ljava/lang/String;"
)
INT_RET = re.compile(
    r"BudgetCore;->(\w+Int|\w+)\([^)]*\)I"
)
# only known int helpers
INT_NAMES = {
    "adminInt",
    "budgetInt",
    "militaryInt",
    "prodInt",
    "taxInt",
    "balanceInt",
    "toIntSaturated",
}
LONG_RET = re.compile(
    r"BudgetCore;->(\w+)\([^)]*\)J"
)
FLOAT_RET = re.compile(
    r"BudgetCore;->(\w+)\([^)]*\)F"
)

INT_USE = re.compile(
    r"\b(neg-int|add-int|sub-int|mul-int|div-int|rem-int|rsub-int|"
    r"and-int|or-int|xor-int|shl-int|shr-int|ushr-int|"
    r"if-(?:eq|ne|lt|ge|gt|le)z?|int-to-(?:long|float|double))\b"
)


def next_code(lines: list[str], i: int) -> tuple[int, str]:
    j = i + 1
    while j < len(lines):
        s = lines[j].strip()
        if not s or s.startswith("#") or s.startswith("."):
            # allow .line
            if s.startswith(".line") or s.startswith(".local") or not s or s.startswith("#"):
                j += 1
                continue
            if s.startswith(".end method"):
                return j, s
        return j, s
    return i, ""


def reg_redefined(line: str, reg: str) -> bool:
    if re.search(
        rf"(?:move-result(?:-object|-wide)?|const(?:/4|/16|/high16)?)\s+{re.escape(reg)}\b",
        line,
    ):
        return True
    if re.search(rf"move(?:-object|-wide)?(?:/from16|/16)?\s+{re.escape(reg)},", line):
        return True
    return False


def scan(path: Path) -> list[str]:
    issues: list[str] = []
    lines = path.read_text(encoding="utf-8").splitlines()
    for i, line in enumerate(lines):
        # --- String return used as int ---
        ms = STRING_RET.search(line)
        if ms and "invoke-" in line:
            j, nxt = next_code(lines, i)
            if not nxt.startswith("move-result-object"):
                issues.append(f"{path.name}:{i+1}: format String missing move-result-object (got {nxt!r})")
                continue
            reg = nxt.split()[-1]
            for k in range(j + 1, min(j + 70, len(lines))):
                s = lines[k].strip()
                if s.startswith(".end method"):
                    break
                if not s or s.startswith("#") or s.startswith(".line"):
                    continue
                if reg_redefined(s, reg):
                    break
                if INT_USE.search(s) and re.search(rf"\b{re.escape(reg)}\b", s):
                    issues.append(f"{path.name}:{i+1}: {ms.group(1)}->{reg} INT-op @ {k+1}: {s}")
                    break
                if "Math;->abs(I)I" in s and reg in s:
                    issues.append(f"{path.name}:{i+1}: {ms.group(1)}->{reg} Math.abs(I) @ {k+1}")
                    break
                if "Integer;->valueOf(I)" in s and re.search(rf"\{{{re.escape(reg)}\}}", s):
                    issues.append(f"{path.name}:{i+1}: {ms.group(1)}->{reg} valueOf(I) @ {k+1}")
                    break
                if "StringBuilder;->append(I)" in s and re.search(
                    rf"\{{[^,]+,\s*{re.escape(reg)}\}}", s
                ):
                    issues.append(f"{path.name}:{i+1}: {ms.group(1)}->{reg} append(I) @ {k+1}")
                    break

        # --- int helper used as String ---
        mi = re.search(r"BudgetCore;->(\w+)\([^)]*\)I", line)
        if mi and "invoke-" in line and mi.group(1) in INT_NAMES:
            j, nxt = next_code(lines, i)
            if not re.match(r"move-result [vp]\d+", nxt):
                issues.append(f"{path.name}:{i+1}: {mi.group(1)} int missing move-result (got {nxt!r})")
                continue
            reg = nxt.split()[-1]
            for k in range(j + 1, min(j + 70, len(lines))):
                s = lines[k].strip()
                if s.startswith(".end method"):
                    break
                if not s or s.startswith("#") or s.startswith(".line"):
                    continue
                if reg_redefined(s, reg):
                    break
                if (
                    "StringBuilder;->append(Ljava/lang/Object;)" in s
                    or "StringBuilder;->append(Ljava/lang/String;)" in s
                ) and re.search(rf"\{{[^,]+,\s*{re.escape(reg)}\}}", s):
                    issues.append(
                        f"{path.name}:{i+1}: {mi.group(1)}->{reg} append(String/Object) @ {k+1}: {s}"
                    )
                    break
                if "getNumberWithSpaces" in s and re.search(rf"\{{{re.escape(reg)}\}}", s):
                    issues.append(f"{path.name}:{i+1}: {mi.group(1)}->{reg} getNumberWithSpaces @ {k+1}")
                    break
                if "move-result-object" in s and False:
                    pass

        # --- long return ---
        ml = LONG_RET.search(line)
        if ml and "invoke-" in line and "BudgetCore;->" in line:
            j, nxt = next_code(lines, i)
            # skip if void-like (shouldn't happen)
            if nxt.startswith("move-result ") and not nxt.startswith("move-result-wide"):
                issues.append(f"{path.name}:{i+1}: {ml.group(1)} long but {nxt!r}")
            elif nxt.startswith("move-result-object"):
                issues.append(f"{path.name}:{i+1}: {ml.group(1)} long but {nxt!r}")

        # --- iget/iput width vs field ---
        for kind, pat in (
            (
                "iget",
                r"iget(-wide)?\s+[vp]\d+,\s+[vp]\d+,\s+Lage/of/civilizations2/jakowski/lukasz/Civilization;->(i|l)(Budget|TaxIncome|ProductionIncome|AdministrationSpendings|MilitaryUpkeep_Total):(I|J)",
            ),
            (
                "iput",
                r"iput(-wide)?\s+[vp]\d+,\s+[vp]\d+,\s+Lage/of/civilizations2/jakowski/lukasz/Civilization;->(i|l)(Budget|TaxIncome|ProductionIncome|AdministrationSpendings|MilitaryUpkeep_Total):(I|J)",
            ),
        ):
            m = re.search(pat, line)
            if not m:
                continue
            wide, prefix, field, typ = m.group(1), m.group(2), m.group(3), m.group(4)
            need_wide = prefix == "l" or typ == "J"
            has_wide = wide == "-wide"
            if need_wide != has_wide:
                issues.append(
                    f"{path.name}:{i+1}: {kind}{'wide' if has_wide else ''} mismatch {prefix}{field}:{typ}"
                )

        # leftover broken tokens from failed patches
        if re.search(r"const-wide\s+#", line) or " # " in line and "invoke-" in line and line.strip().startswith("#"):
            if "const-wide" in line and "#" in line.split("const-wide", 1)[-1][:20]:
                issues.append(f"{path.name}:{i+1}: suspicious const-wide comment residue: {line.strip()}")

    return issues


def main() -> None:
    all_i: list[str] = []
    for path in sorted(ROOT.rglob("*.smali")):
        # skip BudgetCore internals — self-calls use packed move-results with blanks ok
        if path.name == "BudgetCore.smali":
            continue
        all_i.extend(scan(path))
    print(f"ISSUES {len(all_i)}")
    for x in all_i:
        print(x)


if __name__ == "__main__":
    main()
