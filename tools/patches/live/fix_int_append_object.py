# -*- coding: utf-8 -*-
"""Fix *Int results wrongly fed to StringBuilder.append(Object/String).

Strategies:
- Pure display (no later primitive use of same reg): switch back to formatMoneyOf*
- Dual use (later setMax / (II) API): keep civ, format for text, *Int for numeric
- Otherwise: change append(Object) -> append(I)
"""
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

INT_TO_FMT = {
    "adminInt": "formatMoneyOfAdmin",
    "budgetInt": "formatMoneyOfBudget",
    "taxInt": "formatMoneyOfTax",
    "prodInt": "formatMoneyOfProd",
    "militaryInt": "formatMoneyOfMilitary",
}

INT_USE = re.compile(
    r"\b(neg-int|add-int|sub-int|mul-int|div-int|rem-int|rsub-int|"
    r"and-int|or-int|xor-int|shl-int|shr-int|ushr-int|"
    r"if-(?:eq|ne|lt|ge|gt|le)z?|int-to-(?:long|float|double))\b"
)


def skip_meta(lines: list[str], j: int) -> int:
    while j < len(lines):
        s = lines[j].strip()
        if not s or s.startswith("#") or s.startswith(".line") or s.startswith(".local"):
            j += 1
            continue
        return j
    return j


def redefined(line: str, reg: str) -> bool:
    if re.search(
        rf"(?:move-result(?:-object|-wide)?|const(?:-string|-class)?(?:/4|/16|/high16)?)\s+{re.escape(reg)}\b",
        line,
    ):
        return True
    if re.search(rf"move(?:-object|-wide)?(?:/from16|/16)?\s+{re.escape(reg)},", line):
        return True
    return False


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


def arg_type(invoke: str, reg: str) -> str | None:
    im = re.match(r"invoke-(\w+) \{([^}]*)\}, (.+)", invoke.strip())
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
    arg_types = types if kind.startswith("static") else (["THIS"] + types)
    idx = args.index(reg)
    ai = ti = 0
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


def later_primitive_use(lines: list[str], start: int, reg: str, stop_at_append_line: int) -> bool:
    """True if reg is used as primitive after the bad append (e.g. setMax)."""
    for k in range(stop_at_append_line + 1, min(stop_at_append_line + 40, len(lines))):
        s = lines[k].strip()
        if not s or s.startswith("#") or s.startswith(".line"):
            continue
        if s.startswith(".end method") or redefined(s, reg):
            break
        if INT_USE.search(s) and re.search(rf"\b{re.escape(reg)}\b", s):
            return True
        if s.startswith("invoke-"):
            t = arg_type(s, reg)
            if t in ("I", "F", "Z", "B", "C", "S", "J", "D"):
                return True
    return False


def fix_file(path: Path) -> int:
    lines = path.read_text(encoding="utf-8").splitlines(keepends=True)
    changed = 0
    i = 0
    while i < len(lines):
        m = re.match(
            r"^([ \t]*)invoke-static \{([vp]\d+)\}, "
            r"Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->"
            r"(adminInt|budgetInt|taxInt|prodInt|militaryInt)"
            r"\(Lage/of/civilizations2/jakowski/lukasz/Civilization;\)I\s*$",
            lines[i].rstrip("\r\n"),
        )
        if not m:
            i += 1
            continue
        indent, civ, int_name = m.group(1), m.group(2), m.group(3)
        j = skip_meta(lines, i + 1)
        if j >= len(lines):
            i += 1
            continue
        m2 = re.match(r"^[ \t]*move-result ([vp]\d+)\s*$", lines[j].rstrip("\r\n"))
        if not m2:
            i += 1
            continue
        reg = m2.group(1)
        # find append(Object|String) with this reg before redefine
        append_k = None
        append_kind = None
        for k in range(j + 1, min(j + 40, len(lines))):
            s = lines[k].rstrip("\r\n")
            st = s.strip()
            if not st or st.startswith("#") or st.startswith(".line"):
                continue
            if st.startswith(".end method") or redefined(st, reg):
                break
            a = re.match(
                rf"^([ \t]*)invoke-virtual \{{([vp]\d+), {re.escape(reg)}\}}, "
                rf"Ljava/lang/StringBuilder;->append\((Ljava/lang/Object;|Ljava/lang/String;)\)"
                rf"Ljava/lang/StringBuilder;\s*$",
                s,
            )
            if a:
                append_k = k
                append_kind = a.group(3)
                builder = a.group(2)
                a_indent = a.group(1)
                break
            # if used as primitive before append, not a display bug for this pattern
            if st.startswith("invoke-"):
                t = arg_type(st, reg)
                if t in ("I", "F", "Z", "B", "C", "S", "J", "D"):
                    break
            if INT_USE.search(st) and re.search(rf"\b{re.escape(reg)}\b", st):
                break
        if append_k is None:
            i += 1
            continue

        fmt = INT_TO_FMT[int_name]
        needs_int = later_primitive_use(lines, j, reg, append_k)

        if not needs_int:
            # pure display: switch to format*
            lines[i] = (
                f"{indent}invoke-static {{{civ}}}, "
                f"Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->{fmt}"
                f"(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;\n"
            )
            lines[j] = f"{indent}move-result-object {reg}\n"
            changed += 1
        else:
            # Dual use: safest VerifyError fix — append(I). setMax/API keep *Int.
            # (Full long display here would need an extra free register within .locals.)
            lines[append_k] = (
                f"{a_indent}invoke-virtual {{{builder}, {reg}}}, "
                f"Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n"
            )
            changed += 1
        i += 1

    if changed:
        path.write_text("".join(lines), encoding="utf-8")
    return changed


def remaining() -> list[str]:
    out: list[str] = []
    for p in sorted(ROOT.rglob("*.smali")):
        lines = p.read_text(encoding="utf-8").splitlines()
        for i, l in enumerate(lines):
            m = re.search(
                r"BudgetCore;->(adminInt|budgetInt|taxInt|prodInt|militaryInt)\(",
                l,
            )
            if not m:
                continue
            j = skip_meta(lines, i + 1)
            if j >= len(lines):
                continue
            mm = re.match(r"move-result ([vp]\d+)", lines[j].strip())
            if not mm:
                continue
            reg = mm.group(1)
            for k in range(j + 1, min(j + 40, len(lines))):
                s = lines[k].strip()
                if not s or s.startswith("#") or s.startswith(".line"):
                    continue
                if s.startswith(".end method") or redefined(s, reg):
                    break
                if (
                    "append(Ljava/lang/Object;)" in s or "append(Ljava/lang/String;)" in s
                ) and re.search(rf",\s*{re.escape(reg)}\}}", s):
                    out.append(f"{p.name}:{i+1} {m.group(1)}->{reg} {s}")
                    break
    return out


def main() -> None:
    total = 0
    for path in sorted(ROOT.rglob("*.smali")):
        n = fix_file(path)
        if n:
            print(f"{path.name}: {n}")
            total += n
    print(f"TOTAL {total}")
    left = remaining()
    print(f"REMAINING {len(left)}")
    for x in left:
        print(x)


if __name__ == "__main__":
    main()
