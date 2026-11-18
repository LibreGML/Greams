# -*- coding: utf-8 -*-
"""Re-fix ctor dual-path using high-reg save + low-reg string for invoke-virtual."""
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


def must_replace(t: str, old: str, new: str, label: str) -> str:
    if old not in t:
        raise SystemExit(f"MISS: {label}")
    return t.replace(old, new, 1)


def fix_bot_left() -> None:
    p = ROOT / "Menu_InGame_FlagAction_Bot_Left.smali"
    t = p.read_text(encoding="utf-8")

    t = must_replace(
        t,
        """    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoneyOfTax(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    move-result-object v19

    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left$1;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, \"\"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;""",
        """    move-object/from16 v19, v7

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoneyOfTax(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    move-result-object v7

    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left$1;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, \"\"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;""",
        "bot tax fmt",
    )

    t = must_replace(
        t,
        """    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->taxInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v7

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMax(I)V""",
        """    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-object/from16 v7, v19

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->taxInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v7

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMax(I)V""",
        "bot tax max",
    )

    t = must_replace(
        t,
        """    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoneyOfProd(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    move-result-object v19

    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left$2;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;""",
        """    move-object/from16 v19, v7

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoneyOfProd(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    move-result-object v7

    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left$2;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;""",
        "bot prod fmt",
    )

    t = must_replace(
        t,
        """    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->prodInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
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

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;""",
        """    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-object/from16 v7, v19

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->prodInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
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

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;""",
        "bot prod max",
    )

    t = must_replace(
        t,
        """    invoke-static {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatIncome(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)Ljava/lang/String;
    move-result-object v19

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_Total;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;""",
        """    move-object/from16 v19, v4

    invoke-static {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatIncome(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)Ljava/lang/String;
    move-result-object v4

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_Total;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;""",
        "bot income fmt",
    )

    t = must_replace(
        t,
        """    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-static {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->incomeInt(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)I
    move-result v4

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMax(I)V""",
        """    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-object/from16 v4, v19

    invoke-static {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->incomeInt(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)I
    move-result v4

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMax(I)V""",
        "bot income max",
    )

    p.write_text(t, encoding="utf-8")
    print("Bot_Left OK")


def fix_budget() -> None:
    p = ROOT / "Menu_InGame_FlagAction_Budget.smali"
    t = p.read_text(encoding="utf-8")

    t = must_replace(
        t,
        """    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoneyOfTax(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    move-result-object v19

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Budget$1;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, \"\"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;""",
        """    move-object/from16 v19, v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoneyOfTax(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    move-result-object v5

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Budget$1;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, \"\"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;""",
        "budget tax fmt",
    )

    t = must_replace(
        t,
        """    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->taxInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v5

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMax(I)V""",
        """    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-object/from16 v5, v19

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->taxInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v5

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMax(I)V""",
        "budget tax max",
    )

    t = must_replace(
        t,
        """    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoneyOfProd(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    move-result-object v19

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Budget$2;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;""",
        """    move-object/from16 v19, v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoneyOfProd(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    move-result-object v5

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Budget$2;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;""",
        "budget prod fmt",
    )

    t = must_replace(
        t,
        """    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->prodInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
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

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;""",
        """    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-object/from16 v5, v19

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->prodInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
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

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;""",
        "budget prod max",
    )

    t = must_replace(
        t,
        """    invoke-static {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatIncome(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)Ljava/lang/String;
    move-result-object v19

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_Total;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;""",
        """    move-object/from16 v19, v3

    invoke-static {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatIncome(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)Ljava/lang/String;
    move-result-object v3

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_Total;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;""",
        "budget income fmt",
    )

    t = must_replace(
        t,
        """    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-static {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->incomeInt(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)I
    move-result v3

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMax(I)V""",
        """    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-object/from16 v3, v19

    invoke-static {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->incomeInt(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)I
    move-result v3

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMax(I)V""",
        "budget income max",
    )

    p.write_text(t, encoding="utf-8")
    print("Budget OK")


if __name__ == "__main__":
    fix_bot_left()
    fix_budget()
