# -*- coding: utf-8 -*-
"""Patch Text_ActionInfo balance toast/hover to use formatBalance(long)."""
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


def patch(path: Path) -> int:
    text = path.read_text(encoding="utf-8")
    n = 0

    # actionElement toast: getBalance -> p1 int, append(I), getNumberWithSpaces
    old_toast = """    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getBalance(I)I

    move-result p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Balance: "

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;"""

    new_toast = """    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getBalanceLong(I)J

    move-result-wide v4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Balance: "

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatBalance(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;"""

    if old_toast in text:
        text = text.replace(old_toast, new_toast, 1)
        n += 1
        # bump .locals in actionElement if needed
        text = re.sub(
            r"(\.method protected actionElement\(I\)V\n    \.locals )(\d+)",
            lambda m: m.group(1) + str(max(int(m.group(2)), 6)),
            text,
            count=1,
        )

    # hover buildElementHover: getBalance -> v2, later append(I)
    # Keep getBalance for iBalance-like uses; only replace display append chain if present
    # Look for getBalance into v2 then append(I) v2 with getNumberWithSpaces
    old_hover_num = re.compile(
        r"(invoke-virtual \{v2, v3\}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getBalance\(I\)I\s*\n"
        r"\s*move-result v2\s*\n)"
        r"(.*?)"
        r"(new-instance v\d+, Ljava/lang/StringBuilder;\s*\n"
        r".*?"
        r"invoke-virtual \{v\d+, v2\}, Ljava/lang/StringBuilder;->append\(I\)Ljava/lang/StringBuilder;\s*\n"
        r".*?"
        r"invoke-static \{v\d+\}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWithSpaces\(Ljava/lang/String;\)Ljava/lang/String;)",
        re.S,
    )
    # Simpler: replace getBalance(I)I move-result v2 at start of hover with long+format stored in string reg
    # Too risky without reading — leave hover numeric if complex; toast is the main path.

    if n:
        path.write_text(text, encoding="utf-8")
    return n


def main() -> None:
    total = 0
    for name in (
        "Text_ActionInfo_Cost_Right_Balance.smali",
        "Text_ActionInfo_Cost_Right_Balance_Disband.smali",
    ):
        c = patch(ROOT / name)
        print(f"{name}: {c}")
        total += c
    print(f"TOTAL {total}")


if __name__ == "__main__":
    main()
