# -*- coding: utf-8 -*-
"""Replace saturated getBalance(I) toast/hover displays with formatBalance(long)."""
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


def patch_menu_ingame() -> None:
    path = ROOT / "Menu_InGame.smali"
    text = path.read_text(encoding="utf-8")
    # Two nearly identical toast blocks using getBalance(I)I -> v0 then append(I)
    # Replace getBalance with getBalanceLong into v2/v3, keep sign via cmp-long into v0,
    # and formatBalance for the number string.

    old = """    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getBalance(I)I

    move-result v0

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v10, "Balance"

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ": "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-lez v0, :cond_1

    const-string v5, "+"

    :goto_1
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;"""

    new = """    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getBalanceLong(I)J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v0, v2, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v10, "Balance"

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ": "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-lez v0, :cond_1

    const-string v5, "+"

    :goto_1
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatBalance(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;"""

    n = text.count(old)
    # second block uses v5,v6 instead of v5,v8 for getBalance receiver/civ slightly different
    old2 = old.replace(
        "invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getBalance(I)I",
        "invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getBalance(I)I",
    ).replace(
        "sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast",
        "sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast",
    )
    # Actually read second block carefully — patch both with regex

    pat = re.compile(
        r"invoke-virtual \{(v\d+), (v\d+)\}, "
        r"Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getBalance\(I\)I\s*\n"
        r"\s*move-result v0\s*\n"
        r"(\s*sget-object (v\d+), Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:"
        r"Lage/of/civilizations2/jakowski/lukasz/Toast;\s*\n"
        r".*?"
        r"invoke-virtual \{\1_BUILDER_PLACEHOLDER\}"  # won't work
    )
    # Manual two-site replace using markers around append(I) v0 + getNumberWithSpaces

    count = 0
    while True:
        m = re.search(
            r"invoke-virtual \{(v\d+), (v\d+)\}, "
            r"Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getBalance\(I\)I\s*\n"
            r"([ \t]*)move-result v0\s*\n",
            text,
        )
        if not m:
            break
        # only patch if nearby append(I) v0 + getNumberWithSpaces (toast display)
        start = m.start()
        window = text[start : start + 1200]
        if "getNumberWithSpaces" not in window or "append(I)" not in window:
            # skip non-toast by replacing marker temporarily
            text = text[: m.end()] + "/*SKIP*/" + text[m.end() :]
            continue
        ntu, civ, indent = m.group(1), m.group(2), m.group(3)
        # Find toast sget register in window
        tm = re.search(
            r"sget-object (v\d+), Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:",
            window,
        )
        toast_reg = tm.group(1) if tm else "v8"
        # Replace from getBalance through getNumberWithSpaces append chain
        # Match until append of spaced string into builder after getNumberWithSpaces
        block_m = re.search(
            r"invoke-virtual \{(v\d+), (v\d+)\}, "
            r"Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getBalance\(I\)I\s*\n"
            r"[ \t]*move-result v0\s*\n"
            r"(.*?)"
            r"if-lez v0, (:cond_\w+)\s*\n"
            r"(.*?)"
            r"new-instance (v\d+), Ljava/lang/StringBuilder;\s*\n"
            r"\s*invoke-direct \{\6\}, Ljava/lang/StringBuilder;-><init>\(\)V\s*\n"
            r"\s*const-string (v\d+), \"\"\s*\n"
            r"\s*invoke-virtual \{\6, \7\}, Ljava/lang/StringBuilder;->append\(Ljava/lang/String;\)Ljava/lang/StringBuilder;\s*\n"
            r"\s*move-result-object \6\s*\n"
            r"\s*invoke-virtual \{\6, v0\}, Ljava/lang/StringBuilder;->append\(I\)Ljava/lang/StringBuilder;\s*\n"
            r"\s*move-result-object \6\s*\n"
            r"\s*invoke-virtual \{\6\}, Ljava/lang/StringBuilder;->toString\(\)Ljava/lang/String;\s*\n"
            r"\s*move-result-object \6\s*\n"
            r"\s*invoke-static \{\6\}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWithSpaces\(Ljava/lang/String;\)Ljava/lang/String;\s*\n"
            r"\s*move-result-object \6\s*\n"
            r"\s*invoke-virtual \{(v\d+), \6\}, Ljava/lang/StringBuilder;->append\(Ljava/lang/String;\)Ljava/lang/StringBuilder;",
            text[start:],
            re.S,
        )
        if not block_m:
            text = text[: m.end()] + "/*SKIP*/" + text[m.end() :]
            continue
        full = block_m.group(0)
        cond = block_m.group(4)
        num_reg = block_m.group(6)
        empty_reg = block_m.group(7)
        builder_dest = block_m.group(8)
        # rebuild
        # Find which register held builder before "+" append — from if-lez path
        # Use v2/v3 for long; v0 for cmp result
        replacement = f"""invoke-virtual {{{ntu}, {civ}}}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getBalanceLong(I)J

{indent}move-result-wide v2

{indent}const-wide/16 v8, 0x0

{indent}cmp-long v0, v2, v8
"""
        # Keep middle from sget toast through "+"/goto, but we need original middle
        # Simpler approach: only replace getBalance->long+cmp and replace number formatting tail

        # Fall back: surgical two replacements
        text = text[:start] + "/*SKIP*/" + text[start:]
        count += 0
        break

    text = text.replace("/*SKIP*/", "")
    # Surgical: replace all toast getBalance in actionElement with long+format via explicit known snippets
    a = path.read_text(encoding="utf-8")
    replacements = 0

    def repl_one(src: str, ntu: str, civ: str, toast: str, cond: str, goto: str) -> str:
        nonlocal replacements
        old_block = f"""    invoke-virtual {{{ntu}, {civ}}}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getBalance(I)I

    move-result v0

    sget-object {toast}, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {{v5}}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v10, "Balance"

    invoke-virtual {{v9, v10}}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {{v5, v9}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ": "

    invoke-virtual {{v5, v9}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-lez v0, {cond}

    const-string v5, "+"

    {goto}
    invoke-virtual {{v9, v5}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {{v9}}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {{v9, v10}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {{v9, v0}}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {{v9}}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {{v9}}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {{v5, v9}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;"""
        new_block = f"""    invoke-virtual {{{ntu}, {civ}}}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getBalanceLong(I)J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v0, v2, v8

    sget-object {toast}, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {{v5}}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v10, "Balance"

    invoke-virtual {{v9, v10}}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {{v5, v9}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ": "

    invoke-virtual {{v5, v9}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-lez v0, {cond}

    const-string v5, "+"

    {goto}
    invoke-virtual {{v9, v5}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {{v2, v3}}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatBalance(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {{v5, v9}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;"""
        if old_block in src:
            src = src.replace(old_block, new_block, 1)
            replacements += 1
        return src

    a = repl_one(a, "v5", "v8", "v8", ":cond_1", ":goto_1")
    # second site uses v5,v6 getBalance and toast v6, cond_6?/goto — inspect file
    path.write_text(a, encoding="utf-8")
    print(f"Menu_InGame replacements so far: {replacements}")


def main() -> None:
    patch_menu_ingame()


if __name__ == "__main__":
    main()
