# -*- coding: utf-8 -*-
"""Revert BudgetCore.format* when the String result is passed as a primitive arg,
and fix Math.abs(I) results wrongly appended via append(Object)."""
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


def parse_param_types(params: str) -> list[str]:
    types: list[str] = []
    x = 0
    while x < len(params):
        c = params[x]
        if c in "ZBCSIJFD":
            types.append(c)
            x += 1
        elif c == "L":
            end = params.find(";", x)
            types.append(params[x : end + 1])
            x = end + 1
        elif c == "[":
            y = x + 1
            while y < len(params) and params[y] == "[":
                y += 1
            if y < len(params) and params[y] == "L":
                end = params.find(";", y)
                types.append(params[x : end + 1])
                x = end + 1
            else:
                types.append(params[x : y + 1])
                x = y + 1
        else:
            x += 1
    return types


def skip_meta(lines: list[str], j: int) -> int:
    while j < len(lines):
        s = lines[j].strip()
        if not s or s.startswith("#") or s.startswith(".line") or s.startswith(".local"):
            j += 1
            continue
        return j
    return j


def reg_redefined(line: str, reg: str) -> bool:
    if re.search(
        rf"(?:move-result(?:-object|-wide)?|const(?:-string|-class)?(?:/4|/16|/high16)?|"
        rf"sget(?:-wide|-object|-boolean|-byte|-char|-short)?|"
        rf"iget(?:-wide|-object|-boolean|-byte|-char|-short)?)\s+{re.escape(reg)}\b",
        line,
    ):
        return True
    if re.search(rf"move(?:-object|-wide)?(?:/from16|/16)?\s+{re.escape(reg)},", line):
        return True
    return False


def arg_type_for_reg(invoke_line: str, reg: str) -> str | None:
    im = re.match(r"invoke-(\w+) \{([^}]*)\}, (.+)", invoke_line.strip())
    if not im:
        return None
    kind, argstr, sig = im.group(1), im.group(2), im.group(3)
    args = [a.strip() for a in argstr.split(",") if a.strip()]
    if reg not in args:
        return None
    pm = re.search(r"\(([^)]*)\)", sig)
    if not pm:
        return None
    types = parse_param_types(pm.group(1))
    is_static = kind.startswith("static")
    arg_types = types if is_static else (["THIS"] + types)
    idx = args.index(reg)
    ai = 0
    ti = 0
    while ai < len(args) and ti < len(arg_types):
        t = arg_types[ti]
        if ai == idx:
            return t
        if t in ("J", "D"):
            ai += 2
            ti += 1
        else:
            ai += 1
            ti += 1
    return None


def fix_file(path: Path) -> tuple[int, int]:
    lines = path.read_text(encoding="utf-8").splitlines(keepends=True)
    reverted = 0
    append_fixed = 0
    i = 0
    while i < len(lines):
        m = re.match(
            r"^([ \t]*)invoke-static \{([^}]+)\}, "
            r"Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->"
            r"(formatMoneyOf\w+|formatIncome|formatExpenses|formatBalance|formatMoney)"
            r"\(([^)]+)\)Ljava/lang/String;\s*$",
            lines[i].rstrip("\r\n"),
        )
        if m:
            indent, args, fname = m.group(1), m.group(2), m.group(3)
            j = skip_meta(lines, i + 1)
            if j < len(lines):
                m2 = re.match(
                    r"^[ \t]*move-result-object ([vp]\d+)\s*$",
                    lines[j].rstrip("\r\n"),
                )
                if m2:
                    reg = m2.group(1)
                    bad = False
                    for k in range(j + 1, min(j + 40, len(lines))):
                        s = lines[k].strip()
                        if not s or s.startswith("#") or s.startswith(".line"):
                            continue
                        if s.startswith(".end method"):
                            break
                        if reg_redefined(s, reg):
                            break
                        if s.startswith("invoke-"):
                            t = arg_type_for_reg(s, reg)
                            if t in ("I", "F", "Z", "B", "C", "S", "J", "D"):
                                bad = True
                                break
                        if INT_USE_ON_REG(s, reg):
                            bad = True
                            break
                    if bad and fname in CIV_REVERT:
                        new_name = CIV_REVERT[fname]
                        lines[i] = (
                            f"{indent}invoke-static {{{args}}}, "
                            f"Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->{new_name}"
                            f"(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I\n"
                        )
                        lines[j] = f"{indent}move-result {reg}\n"
                        reverted += 1
        i += 1

    # Fix append(Object) after Math.abs(I)
    for i, line in enumerate(lines):
        if "Ljava/lang/Math;->abs(I)I" not in line:
            continue
        j = skip_meta(lines, i + 1)
        if j >= len(lines):
            continue
        m2 = re.match(r"^[ \t]*move-result ([vp]\d+)\s*$", lines[j].rstrip("\r\n"))
        if not m2:
            continue
        reg = m2.group(1)
        for k in range(j + 1, min(j + 20, len(lines))):
            a = re.match(
                rf"^([ \t]*)invoke-virtual \{{([vp]\d+), {re.escape(reg)}\}}, "
                rf"Ljava/lang/StringBuilder;->append\(Ljava/lang/Object;\)"
                rf"Ljava/lang/StringBuilder;\s*$",
                lines[k].rstrip("\r\n"),
            )
            if a:
                lines[k] = (
                    f"{a.group(1)}invoke-virtual {{{a.group(2)}, {reg}}}, "
                    f"Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n"
                )
                append_fixed += 1
                break
            if reg_redefined(lines[k], reg):
                break

    if reverted or append_fixed:
        path.write_text("".join(lines), encoding="utf-8")
    return reverted, append_fixed


def INT_USE_ON_REG(s: str, reg: str) -> bool:
    if not re.search(rf"\b{re.escape(reg)}\b", s):
        return False
    if re.search(
        r"\b(neg-int|add-int|sub-int|mul-int|div-int|rem-int|rsub-int|"
        r"and-int|or-int|xor-int|shl-int|shr-int|ushr-int|"
        r"if-(?:eq|ne|lt|ge|gt|le)z?|int-to-(?:long|float|double))\b",
        s,
    ):
        return True
    if "Ljava/lang/Math;->abs(I)I" in s:
        return True
    if "Ljava/lang/Integer;->valueOf(I)" in s:
        return True
    return False


def remaining() -> list[str]:
    issues: list[str] = []
    for p in sorted(ROOT.rglob("*.smali")):
        lines = p.read_text(encoding="utf-8").splitlines()
        for i, l in enumerate(lines):
            m = re.search(r"BudgetCore;->(format\w+)\([^)]*\)Ljava/lang/String;", l)
            if not m or "invoke-" not in l:
                continue
            j = skip_meta(lines, i + 1)
            if j >= len(lines):
                continue
            mm = re.match(r"move-result-object ([vp]\d+)", lines[j].strip())
            if not mm:
                continue
            reg = mm.group(1)
            for k in range(j + 1, min(j + 40, len(lines))):
                s = lines[k].strip()
                if not s or s.startswith("#") or s.startswith(".line"):
                    continue
                if s.startswith(".end method") or reg_redefined(s, reg):
                    break
                if s.startswith("invoke-"):
                    t = arg_type_for_reg(s, reg)
                    if t in ("I", "F", "Z", "B", "C", "S", "J", "D"):
                        issues.append(f"{p.name}:{i+1} {m.group(1)}->{reg} -> {s[:100]}")
                        break
                if INT_USE_ON_REG(s, reg):
                    issues.append(f"{p.name}:{i+1} {m.group(1)}->{reg} INT {s[:80]}")
                    break
    return issues


def main() -> None:
    tr = ta = 0
    for path in sorted(ROOT.rglob("*.smali")):
        if path.name == "BudgetCore.smali":
            continue
        r, a = fix_file(path)
        if r or a:
            print(f"{path.name}: reverted={r} append_fixed={a}")
            tr += r
            ta += a
    print(f"TOTAL reverted={tr} append_fixed={ta}")
    left = remaining()
    print(f"REMAINING {len(left)}")
    for x in left:
        print(x)


if __name__ == "__main__":
    main()
