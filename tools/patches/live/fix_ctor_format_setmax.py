# -*- coding: utf-8 -*-
"""Fix constructor format* -> setMax(I) VerifyError: String used as int."""
from __future__ import annotations

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


def add_income_int(budget_core: Path) -> None:
    t = budget_core.read_text(encoding="utf-8")
    if "incomeInt(" in t:
        print("BudgetCore: incomeInt already present")
        return
    anchor = (
        ".method public static incomeFloat(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)F\n"
    )
    insert = (
        ".method public static incomeInt(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)I\n"
        "    .registers 2\n"
        "\n"
        "    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;"
        "->incomeLong(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)J\n"
        "\n"
        "    move-result-wide p0\n"
        "\n"
        "    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;"
        "->toIntSaturated(J)I\n"
        "\n"
        "    move-result p0\n"
        "\n"
        "    return p0\n"
        ".end method\n"
        "\n"
    )
    if anchor not in t:
        raise SystemExit("BudgetCore: incomeFloat anchor missing")
    budget_core.write_text(t.replace(anchor, insert + anchor, 1), encoding="utf-8")
    print("BudgetCore: added incomeInt")


def fix_bot_left(path: Path) -> None:
    t = path.read_text(encoding="utf-8")
    n = 0

    # Tax: keep civ in v7, string in v19
    old = """    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoneyOfTax(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    move-result-object v7

    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left$1;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, \"\"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;"""
    new = """    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoneyOfTax(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    move-result-object v19

    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left$1;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, \"\"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;"""
    if old not in t:
        raise SystemExit("Bot_Left: tax format miss")
    t = t.replace(old, new, 1)
    n += 1

    old = """    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMax(I)V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v4, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoneyOfProd(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    move-result-object v7"""
    new = """    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->taxInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v7

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMax(I)V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v4, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoneyOfProd(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    move-result-object v19"""
    if old not in t:
        raise SystemExit("Bot_Left: taxMax/prod format miss")
    t = t.replace(old, new, 1)
    n += 1

    # Prod append still uses v7 — switch to v19
    old = """    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoneyOfProd(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    move-result-object v19

    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left$2;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;"""
    new = """    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoneyOfProd(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    move-result-object v19

    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left$2;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;"""
    if old not in t:
        raise SystemExit("Bot_Left: prod append miss")
    t = t.replace(old, new, 1)
    n += 1

    # Prod setMax — first occurrence after $2 (others block still uses int v7 correctly)
    old = """    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left;Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMax(I)V"""
    new = """    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left;Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->prodInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v7

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMax(I)V"""
    if old not in t:
        raise SystemExit("Bot_Left: prod setMax miss")
    t = t.replace(old, new, 1)
    n += 1

    # Income: keep NextTurnUpdate in v4, civID in v7, string in v19
    old = """    invoke-static {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatIncome(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)Ljava/lang/String;
    move-result-object v4

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_Total;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;"""
    new = """    invoke-static {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatIncome(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)Ljava/lang/String;
    move-result-object v19

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_Total;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;"""
    if old not in t:
        raise SystemExit("Bot_Left: income format miss")
    t = t.replace(old, new, 1)
    n += 1

    # Fix rest of income block: v9->v11 for inner SB; instance now v9; preserve v4/v7 for incomeInt
    old = """    invoke-virtual {v11, v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v9, \"TotalIncome\"

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v14, v8, 0x2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    sub-int v8, v0, v8

    div-int/lit8 v16, v8, 0x2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x3

    add-int v17, v8, v9

    move-object v11, v7

    invoke-direct/range {v11 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_Total;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMax(I)V"""
    new = """    invoke-virtual {v11, v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v11, \"TotalIncome\"

    invoke-virtual {v8, v11}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v14, v8, 0x2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    sub-int v8, v0, v8

    div-int/lit8 v16, v8, 0x2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x3

    add-int v17, v8, v11

    move-object v11, v9

    invoke-direct/range {v11 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_Total;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-static {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->incomeInt(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)I
    move-result v4

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMax(I)V"""
    if old not in t:
        raise SystemExit("Bot_Left: income setMax miss")
    t = t.replace(old, new, 1)
    n += 1

    path.write_text(t, encoding="utf-8")
    print(f"Bot_Left: {n} patches")


def fix_budget(path: Path) -> None:
    t = path.read_text(encoding="utf-8")
    n = 0

    old = """    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoneyOfTax(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    move-result-object v5

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Budget$1;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, \"\"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;"""
    new = """    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoneyOfTax(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    move-result-object v19

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Budget$1;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, \"\"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;"""
    if old not in t:
        raise SystemExit("Budget: tax format miss")
    t = t.replace(old, new, 1)
    n += 1

    old = """    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMax(I)V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v10

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoneyOfProd(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    move-result-object v5"""
    new = """    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->taxInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v5

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMax(I)V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v10

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoneyOfProd(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    move-result-object v19"""
    if old not in t:
        raise SystemExit("Budget: taxMax/prod format miss")
    t = t.replace(old, new, 1)
    n += 1

    old = """    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoneyOfProd(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    move-result-object v19

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Budget$2;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;"""
    new = """    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoneyOfProd(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    move-result-object v19

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Budget$2;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;"""
    if old not in t:
        raise SystemExit("Budget: prod append miss")
    t = t.replace(old, new, 1)
    n += 1

    old = """    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Budget$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Budget;Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v10

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMax(I)V"""
    new = """    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Budget$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Budget;Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v10

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->prodInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v5

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMax(I)V"""
    if old not in t:
        raise SystemExit("Budget: prod setMax miss")
    t = t.replace(old, new, 1)
    n += 1

    old = """    invoke-static {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatIncome(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)Ljava/lang/String;
    move-result-object v3

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_Total;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;"""
    new = """    invoke-static {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatIncome(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)Ljava/lang/String;
    move-result-object v19

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_Total;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;"""
    if old not in t:
        raise SystemExit("Budget: income format miss")
    t = t.replace(old, new, 1)
    n += 1

    old = """    invoke-virtual {v11, v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v7, \"TotalIncome\"

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v14, v6, 0x2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x4

    sub-int v6, v0, v6

    div-int/lit8 v16, v6, 0x2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x3

    add-int v17, v6, v7

    move-object v11, v5

    invoke-direct/range {v11 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_Total;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v10

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMax(I)V"""
    new = """    invoke-virtual {v11, v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v11, \"TotalIncome\"

    invoke-virtual {v7, v11}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v14, v7, 0x2

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x4

    sub-int v7, v0, v7

    div-int/lit8 v16, v7, 0x2

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x3

    add-int v17, v7, v11

    move-object v11, v6

    invoke-direct/range {v11 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_Total;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v10

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-static {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->incomeInt(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)I
    move-result v3

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMax(I)V"""
    if old not in t:
        raise SystemExit("Budget: income setMax miss")
    t = t.replace(old, new, 1)
    n += 1

    if ".method protected constructor <init>()V\n    .locals 30\n" in t:
        t = t.replace(
            ".method protected constructor <init>()V\n    .locals 30\n",
            ".method protected constructor <init>()V\n    .locals 31\n",
            1,
        )
        print("Budget: bumped .locals to 31")

    path.write_text(t, encoding="utf-8")
    print(f"Budget: {n} patches")


def main() -> None:
    add_income_int(ROOT / "BudgetCore.smali")
    fix_bot_left(ROOT / "Menu_InGame_FlagAction_Bot_Left.smali")
    fix_budget(ROOT / "Menu_InGame_FlagAction_Budget.smali")


if __name__ == "__main__":
    main()
