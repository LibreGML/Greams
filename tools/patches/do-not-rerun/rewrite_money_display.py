# -*- coding: utf-8 -*-
"""Replace saturated int money displays with BudgetCore formatMoney* (full long)."""
from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3] / "AOE_unpacked" / "smali" / "age" / "of" / "civilizations2" / "jakowski" / "lukasz"

CIV_FORMAT = {
    "budgetInt": "formatMoneyOfBudget",
    "taxInt": "formatMoneyOfTax",
    "prodInt": "formatMoneyOfProd",
    "adminInt": "formatMoneyOfAdmin",
    "militaryInt": "formatMoneyOfMilitary",
}


def rewrite_clean(text: str) -> tuple[str, int]:
    count = 0
    for int_name, fmt_name in CIV_FORMAT.items():
        pat = re.compile(
            rf"invoke-static \{{([vp]\d+)\}}, "
            rf"Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->{int_name}"
            rf"\(Lage/of/civilizations2/jakowski/lukasz/Civilization;\)I\s*\n"
            rf"([ \t]*)move-result ([vp]\d+)"
        )

        def make_repl(fmt: str):
            def repl(m: re.Match) -> str:
                nonlocal count
                count += 1
                obj, indent, reg = m.group(1), m.group(2), m.group(3)
                return (
                    f"invoke-static {{{obj}}}, "
                    f"Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->{fmt}"
                    f"(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;\n"
                    f"{indent}move-result-object {reg}"
                )

            return repl

        text = pat.sub(make_repl(fmt_name), text)

    income_pat = re.compile(
        r"invoke-virtual \{([vp]\d+), ([vp]\d+)\}, "
        r"Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getIncome\(I\)F\s*\n"
        r"([ \t]*)move-result ([vp]\d+)\s*\n"
        r"[ \t]*float-to-int \4, \4"
    )

    def income_repl(m: re.Match) -> str:
        nonlocal count
        count += 1
        ntu, civ, indent, reg = m.group(1), m.group(2), m.group(3), m.group(4)
        return (
            f"invoke-static {{{ntu}, {civ}}}, "
            f"Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatIncome"
            f"(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)Ljava/lang/String;\n"
            f"{indent}move-result-object {reg}"
        )

    text = income_pat.sub(income_repl, text)

    expense_pat = re.compile(
        r"invoke-virtual \{([vp]\d+), ([vp]\d+)\}, "
        r"Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getExpenses\(I\)F\s*\n"
        r"([ \t]*)move-result ([vp]\d+)\s*\n"
        r"[ \t]*float-to-int \4, \4"
    )

    def expense_repl(m: re.Match) -> str:
        nonlocal count
        count += 1
        ntu, civ, indent, reg = m.group(1), m.group(2), m.group(3), m.group(4)
        return (
            f"invoke-static {{{ntu}, {civ}}}, "
            f"Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatExpenses"
            f"(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)Ljava/lang/String;\n"
            f"{indent}move-result-object {reg}"
        )

    text = expense_pat.sub(expense_repl, text)

    lines = text.splitlines(keepends=True)
    for idx, line in enumerate(lines):
        if "BudgetCore;->format" not in line or idx + 1 >= len(lines):
            continue
        m2 = re.match(r"^[ \t]*move-result-object ([vp]\d+)\s*$", lines[idx + 1].rstrip("\r\n"))
        if not m2:
            continue
        reg = m2.group(1)
        for j in range(idx + 2, min(idx + 60, len(lines))):
            a = re.match(
                rf"^([ \t]*)invoke-virtual \{{([vp]\d+), {re.escape(reg)}\}}, "
                rf"Ljava/lang/StringBuilder;->append\(I\)Ljava/lang/StringBuilder;\s*$",
                lines[j].rstrip("\r\n"),
            )
            if a:
                lines[j] = (
                    f"{a.group(1)}invoke-virtual {{{a.group(2)}, {reg}}}, "
                    f"Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)"
                    f"Ljava/lang/StringBuilder;\n"
                )
                count += 1
                # Drop a following getNumberWithSpaces on the same builder string if it would
                # re-space an already spaced formatMoney result — leave as-is (harmless if
                # getNumberWithSpaces is idempotent on spaced digits).
                break

    return "".join(lines), count


def main() -> None:
    print(
        "DISABLED: blind format* rewrite caused VerifyError "
        "(String passed to (II) APIs / arithmetic). "
        "Use tools/fix_format_as_int_args.py + fix_int_append_object.py instead."
    )
    return
    total = 0
    # Budget UI + sliders + any remaining FlagAction money screens
    names = {p.name for p in ROOT.glob("Menu_InGame_FlagAction_Budget*.smali")}
    names |= {p.name for p in ROOT.glob("Menu_InGame_FlagAction_Bot_Left*.smali")}
    names |= {
        "Slider_FlagAction.smali",
        "Slider_FlagAction_Goods.smali",
        "Slider_FlagAction_Investments.smali",
        "Text_Economy_SliderDesc_Research.smali",
        # TimelapseManager stores Integer graph points — keep taxInt/prodInt/getIncome ints
        "Menu_InGame_FlagAction_Stats$5.smali",
        "Menu_InGame_FlagAction_Stats$9.smali",
    }
    for name in sorted(names):
        path = ROOT / name
        if not path.exists():
            continue
        original = path.read_text(encoding="utf-8")
        new, n = rewrite_clean(original)
        if n:
            path.write_text(new, encoding="utf-8")
            print(f"{name}: {n}")
            total += n
    print(f"TOTAL {total}")


if __name__ == "__main__":
    main()
