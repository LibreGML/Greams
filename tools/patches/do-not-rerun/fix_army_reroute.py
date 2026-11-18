# -*- coding: utf-8 -*-
"""Allow changing pending move destination and replacing mid-regroup routes."""
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


HELPER = r"""
.method protected final clearOrdersFromProvinceForReroute(III)V
    .locals 8

    # p1=fromProvince, p2=keepToOrNeg1, p3=civId
    # Cancels Move_Units from p1 when to != p2 (p2<0 => cancel all).
    # Removes RegroupArmy_Data with fromProvinceID == p1.

    const/4 v0, 0x0

    :goto_moves
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsSize()I

    move-result v1

    if-ge v0, v1, :cond_moves_done

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v2

    if-eq v2, p1, :cond_check_to

    add-int/lit8 v0, v0, 0x1

    goto :goto_moves

    :cond_check_to
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v2

    if-ltz p2, :cond_do_cancel

    if-ne v2, p2, :cond_do_cancel

    add-int/lit8 v0, v0, 0x1

    goto :goto_moves

    :cond_do_cancel
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getNumOfUnits()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, p3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v4, p3, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy(II)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v4

    invoke-virtual {p0, p1, v2, p3}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->costOfMoveArmy(III)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeMove(I)V

    goto :goto_moves

    :cond_moves_done
    const/4 v0, 0x0

    :goto_regroup
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRegroupArmySize()I

    move-result v1

    if-ge v0, v1, :cond_regroup_done

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRegroupArmy(I)Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getFromProvinceID()I

    move-result v1

    if-ne v1, p1, :cond_regroup_next

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeRegroupArmy(I)V

    goto :goto_regroup

    :cond_regroup_next
    add-int/lit8 v0, v0, 0x1

    goto :goto_regroup

    :cond_regroup_done
    return-void
.end method

"""


def fix_game_action() -> None:
    p = ROOT / "Game_Action.smali"
    t = p.read_text(encoding="utf-8")

    if "clearOrdersFromProvinceForReroute" in t:
        print("Game_Action: helper already present")
    else:
        t = must_replace(
            t,
            ".method protected final moveArmy(IIIIZZ)Z\n",
            HELPER + ".method protected final moveArmy(IIIIZZ)Z\n",
            "insert helper before moveArmy",
        )

    t = must_replace(
        t,
        """    :cond_3
    const/4 v1, 0x0

    :goto_4
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsSize()I

    move-result v6

    if-ge v1, v6, :cond_7""",
        """    :cond_3
    invoke-virtual {p0, p1, p2, p4}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->clearOrdersFromProvinceForReroute(III)V

    const/4 v1, 0x0

    :goto_4
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsSize()I

    move-result v6

    if-ge v1, v6, :cond_7""",
        "call reroute clear at cond_3",
    )

    p.write_text(t, encoding="utf-8")
    print("Game_Action: reroute clear wired")


def fix_click_move_to() -> None:
    p = ROOT / "Menu_InGame_ProvinceAction.smali"
    t = p.read_text(encoding="utf-8")

    # At start of clickMoveTo, if already moving/regrouping from province, skip MP/units gates
    t = must_replace(
        t,
        """.method protected static final clickMoveTo()V
    .locals 6

    const/4 v5, 0x0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v0
""",
        """.method protected static final clickMoveTo()V
    .locals 6

    const/4 v5, 0x0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->isMovingArmyFromProvince(II)Z

    move-result v0

    if-nez v0, :cond_reroute_regroup

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    const/4 v3, 0x0

    :goto_rg
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRegroupArmySize()I

    move-result v4

    if-ge v3, v4, :cond_no_existing_order

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRegroupArmy(I)Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getFromProvinceID()I

    move-result v4

    if-ne v4, v1, :cond_rg_next

    :cond_reroute_regroup
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->resetChooseProvinceData()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->regroupArmyMode()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceAction(Z)V

    goto :goto_0

    :cond_rg_next
    add-int/lit8 v3, v3, 0x1

    goto :goto_rg

    :cond_no_existing_order
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v0
""",
        "clickMoveTo allow reroute",
    )

    p.write_text(t, encoding="utf-8")
    print("ProvinceAction: clickMoveTo reroute entry")


if __name__ == "__main__":
    fix_game_action()
    fix_click_move_to()
