# -*- coding: utf-8 -*-
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


def skip(lines: list[str], j: int) -> int:
    while j < len(lines):
        s = lines[j].strip()
        if not s or s.startswith("#") or s.startswith(".line"):
            j += 1
            continue
        return j
    return j


def redefined(line: str, reg: str) -> bool:
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


def parse_types(params: str) -> list[str]:
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
    types = parse_types(pm.group(1))
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


def main() -> None:
    hard: list[str] = []
    soft: list[str] = []
    for p in sorted(ROOT.rglob("*.smali")):
        if p.name == "BudgetCore.smali":
            continue
        lines = p.read_text(encoding="utf-8").splitlines()
        for i, line in enumerate(lines):
            m = re.search(r"BudgetCore;->(format\w+)\([^)]*\)Ljava/lang/String;", line)
            if m and "invoke-" in line:
                j = skip(lines, i + 1)
                if j >= len(lines):
                    continue
                mm = re.match(r"move-result-object ([vp]\d+)", lines[j].strip())
                if not mm:
                    hard.append(f"{p.name}:{i+1} format missing move-result-object")
                    continue
                reg = mm.group(1)
                for k in range(j + 1, min(j + 40, len(lines))):
                    s = lines[k].strip()
                    if not s or s.startswith("#") or s.startswith(".line"):
                        continue
                    if s.startswith(".end method") or redefined(s, reg):
                        break
                    if re.search(
                        r"\b(neg-int|add-int|sub-int|mul-int|div-int|Math;->abs\(I\))\b", s
                    ) and re.search(rf"\b{re.escape(reg)}\b", s):
                        hard.append(f"{p.name}:{i+1} format INT @{k+1}")
                        break
                    if "append(I)" in s and re.search(rf",\s*{re.escape(reg)}\}}", s):
                        hard.append(f"{p.name}:{i+1} format append(I) @{k+1}")
                        break
                    if s.startswith("invoke-"):
                        t = arg_type(s, reg)
                        if t in ("I", "F", "Z", "B", "C", "S", "J", "D"):
                            hard.append(f"{p.name}:{i+1} format as {t} @{k+1}: {s[:90]}")
                            break

            m = re.search(
                r"BudgetCore;->(adminInt|budgetInt|taxInt|prodInt|militaryInt)\(", line
            )
            if m:
                j = skip(lines, i + 1)
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
                        hard.append(f"{p.name}:{i+1} {m.group(1)} append Object @{k+1}")
                        break

            if "->getBalance(I)I" in line:
                window = "\n".join(lines[i : i + 35])
                if "getNumberWithSpaces" in window or (
                    "append(I)" in window and "StringBuilder" in window
                ):
                    soft.append(f"{p.name}:{i+1}")

    print(f"HARD {len(hard)}")
    for x in hard:
        print(x)
    print(f"SOFT {len(soft)}")
    for x in soft:
        print(x)


if __name__ == "__main__":
    main()
