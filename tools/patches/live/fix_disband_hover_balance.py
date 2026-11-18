# -*- coding: utf-8 -*-
from pathlib import Path

p = Path(
    r"C:\Users\17786\Mycode\AOE\AOE_unpacked\smali\age\of\civilizations2\jakowski\lukasz"
    r"\Text_ActionInfo_Cost_Right_Balance_Disband.smali"
)
t = p.read_text(encoding="utf-8")

old = """    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getBalance(I)I

    move-result v2

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v6, "Balance"

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-lez v2, :cond_0"""

new = """    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getBalanceLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toIntSaturated(J)I

    move-result v2

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v6, "Balance"

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-static {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatBalance(J)Ljava/lang/String;

    move-result-object v4

    if-lez v2, :cond_0"""

if old not in t:
    raise SystemExit("pattern miss")
t = t.replace(old, new, 1)
needle = (
    "    invoke-interface {v1}, Ljava/util/List;->clear()\n\n"
    "    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate"
)
repl = (
    "    invoke-interface {v1}, Ljava/util/List;->clear()\n\n"
    '    const-string v6, ""\n\n'
    "    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate"
)
if needle not in t:
    raise SystemExit("v6 needle miss")
t = t.replace(needle, repl, 1)
p.write_text(t, encoding="utf-8")
print("OK")
