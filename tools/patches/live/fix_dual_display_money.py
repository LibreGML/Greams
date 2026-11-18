# -*- coding: utf-8 -*-
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


def fix_admin_hover(path: Path) -> bool:
    t = path.read_text(encoding="utf-8")
    old = (
        "    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;"
        "->adminInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I\n"
        "    move-result v6\n"
        "\n"
        "    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)"
        "Ljava/lang/StringBuilder;"
    )
    new = (
        "    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;"
        "->formatMoneyOfAdmin(Lage/of/civilizations2/jakowski/lukasz/Civilization;)"
        "Ljava/lang/String;\n"
        "    move-result-object v6\n"
        "\n"
        "    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)"
        "Ljava/lang/StringBuilder;"
    )
    if old not in t:
        print(f"{path.name}: admin hover pattern miss")
        return False
    path.write_text(t.replace(old, new, 1), encoding="utf-8")
    print(f"{path.name}: admin hover -> formatMoneyOfAdmin")
    return True


def fix_tax_prod(path: Path) -> None:
    cls = path.stem
    t = path.read_text(encoding="utf-8")

    old_tax = f"""    invoke-static {{v0}}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->taxInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v0

    const/4 v1, 0x1

    invoke-virtual {{p0, v1}}, Lage/of/civilizations2/jakowski/lukasz/{cls};->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {{v3}}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, \"\"

    invoke-virtual {{v3, v4}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {{v3, v0}}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {{v3}}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {{v2, v3}}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {{p0, v1}}, Lage/of/civilizations2/jakowski/lukasz/{cls};->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {{v2, v0}}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMax(I)V"""

    new_tax = f"""    invoke-static {{v0}}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoneyOfTax(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    move-result-object v5

    const/4 v1, 0x1

    invoke-virtual {{p0, v1}}, Lage/of/civilizations2/jakowski/lukasz/{cls};->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {{v3}}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, \"\"

    invoke-virtual {{v3, v4}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {{v3, v5}}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {{v3}}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {{v2, v3}}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-static {{v0}}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->taxInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v0

    invoke-virtual {{p0, v1}}, Lage/of/civilizations2/jakowski/lukasz/{cls};->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {{v2, v0}}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMax(I)V"""

    if old_tax in t:
        t = t.replace(old_tax, new_tax, 1)
        print(f"{path.name}: tax dual upgraded")
    else:
        print(f"{path.name}: tax dual miss")

    old_prod = f"""    invoke-static {{v0}}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->prodInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v0

    const/4 v2, 0x2

    invoke-virtual {{p0, v2}}, Lage/of/civilizations2/jakowski/lukasz/{cls};->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {{v5}}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {{v5, v4}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {{v5, v0}}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {{v5}}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {{v3, v5}}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {{p0, v2}}, Lage/of/civilizations2/jakowski/lukasz/{cls};->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {{v3, v0}}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMax(I)V"""

    new_prod = f"""    invoke-static {{v0}}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoneyOfProd(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    move-result-object v5

    const/4 v2, 0x2

    invoke-virtual {{p0, v2}}, Lage/of/civilizations2/jakowski/lukasz/{cls};->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {{v6}}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {{v6, v4}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {{v6, v5}}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {{v6}}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {{v3, v5}}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-static {{v0}}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->prodInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v0

    invoke-virtual {{p0, v2}}, Lage/of/civilizations2/jakowski/lukasz/{cls};->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {{v3, v0}}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMax(I)V"""

    if old_prod in t:
        t = t.replace(old_prod, new_prod, 1)
        print(f"{path.name}: prod dual upgraded")
    else:
        print(f"{path.name}: prod dual miss")

    path.write_text(t, encoding="utf-8")


def main() -> None:
    fix_admin_hover(ROOT / "Menu_InGame_FlagAction_Budget$4.smali")
    fix_admin_hover(ROOT / "Menu_InGame_FlagAction_Bot_Left$4.smali")
    fix_tax_prod(ROOT / "Menu_InGame_FlagAction_Budget.smali")
    fix_tax_prod(ROOT / "Menu_InGame_FlagAction_Bot_Left.smali")


if __name__ == "__main__":
    main()
