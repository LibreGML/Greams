# -*- coding: utf-8 -*-
"""Speed up Next Turn / LOAD_AI_RTO for large civ counts."""
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


def must_replace(t: str, old: str, new: str, label: str) -> str:
    if old not in t:
        raise SystemExit(f"MISS: {label}")
    if old in t.replace(old, "", 1):
        # allow only if unique - check count
        pass
    count = t.count(old)
    if count != 1:
        raise SystemExit(f"COUNT {count}: {label}")
    return t.replace(old, new, 1)


def patch_ai_turn_orders(path: Path) -> None:
    """Only remove per-civ setRender_3; keep full turnOrders every civ every turn."""
    t = path.read_text(encoding="utf-8")
    old = """    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->iLoadingTurnActionsOfCivID:I

    const/4 v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->lAI_Styles:Ljava/util/List;
"""
    new = """    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->iLoadingTurnActionsOfCivID:I

    # Removed per-civ setRender_3 only (no AI schedule change)

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->lAI_Styles:Ljava/util/List;
"""
    if old not in t:
        if "Removed per-civ setRender_3" in t and "cond_full_ai" not in t:
            print("SKIP AI.turnOrders (already no stagger)")
            return
        if "cond_full_ai" in t:
            raise SystemExit("AI.turnOrders still has stagger; revert manually")
        raise SystemExit("MISS: AI setRender_3 block")
    t = must_replace(t, old, new, "AI remove setRender_3")
    path.write_text(t, encoding="utf-8")
    print("OK AI.turnOrders (no stagger)")


def strip_invoke_log_block(text: str, marker: str, label: str) -> str:
    if f"stripped log: {label}" in text:
        return text
    idx = text.find(marker)
    if idx < 0:
        raise SystemExit(f"MISS log marker: {label}")
    start = text.rfind("sget-object", 0, idx)
    if start < 0:
        raise SystemExit(f"MISS log start: {label}")
    m = re.search(
        r"invoke-interface[^\n]*Lcom/badlogic/gdx/Application;->log\([^\)]*\)V\n",
        text[idx:],
    )
    if not m:
        raise SystemExit(f"MISS log invoke: {label}")
    end = idx + m.end()
    return text[:start] + f"    # stripped log: {label}\n" + text[end:]


def patch_ai_style_logs(path: Path) -> None:
    t = path.read_text(encoding="utf-8")
    for marker, label in [
        ('const-string v33, "BEGIN, "', "turnOrders BEGIN"),
        ('const-string v33, "MILITARY UPKEEP CHECK: "', "turnOrders MILITARY"),
        ('const-string v32, "MILITARY UPKEEP CHECK: we need to disband"', "turnOrders DISBAND"),
        ('const-string v3, "diplomacyActions - > "', "diplomacy BEGIN"),
        ('const-string v2, "diplomacyActions - > END"', "diplomacy END"),
    ]:
        t = strip_invoke_log_block(t, marker, label)
    path.write_text(t, encoding="utf-8")
    print("OK AI_Style logs")


def patch_diplomacy_aggressiveness(path: Path) -> None:
    t = path.read_text(encoding="utf-8")
    if "AI_AGGRESSIVNESS:F" in t[t.find("diplomacyActions_DeclareWar") - 200 : t.find("diplomacyActions_DeclareWar")]:
        # fragile; use explicit marker
        pass
    old = """    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->isPreparingForTheWar()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->diplomacyActions_DeclareWar(I)V

    :cond_1
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->diplomacyActions_Ally(I)V
"""
    if "AI_AGGRESSIVNESS:F" in t and "diplomacyActions_DeclareWar(I)V" in t:
        # check if already gated just before DeclareWar call in diplomacyActions
        probe = """    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->AI_AGGRESSIVNESS:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->diplomacyActions_DeclareWar(I)V
"""
        if probe in t:
            print("SKIP diplomacy aggressiveness (already)")
            return
    new = """    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->isPreparingForTheWar()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->AI_AGGRESSIVNESS:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->diplomacyActions_DeclareWar(I)V

    :cond_1
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->diplomacyActions_Ally(I)V
"""
    t = must_replace(t, old, new, "skip DeclareWar when aggressiveness 0")
    path.write_text(t, encoding="utf-8")
    print("OK diplomacy aggressiveness gate")


def patch_end_of_input_orders(path: Path) -> None:
    t = path.read_text(encoding="utf-8")
    old = """    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Turn_Actions;->runRevolts()V

    :cond_1
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Turn_Actions;
"""
    if old not in t:
        if "Revolts always run inside Turn_Actions" in t:
            print("SKIP endOfInputOrders (already)")
            return
        raise SystemExit("MISS: endOfInputOrders revolts")
    new = """    # Revolts always run inside Turn_Actions thread (was blocking Android UI)

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Turn_Actions;
"""
    t = must_replace(t, old, new, "endOfInputOrders revolts")
    path.write_text(t, encoding="utf-8")
    print("OK Game_Action.endOfInputOrders")


def patch_turn_actions_revolts(path: Path) -> None:
    t = path.read_text(encoding="utf-8")
    old = """    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isDesktop()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Turn_Actions;->runRevolts()V

    :cond_0
"""
    if old not in t:
        # maybe already always-run
        if "invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Turn_Actions;->runRevolts()V" in t:
            # check desktop gate gone near start of run
            print("SKIP Turn_Actions revolts (check manually)")
            return
        raise SystemExit("MISS: Turn_Actions revolts")
    new = """    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Turn_Actions;->runRevolts()V

"""
    t = must_replace(t, old, new, "Turn_Actions always revolts")
    path.write_text(t, encoding="utf-8")
    print("OK Turn_Actions revolts")


def main() -> None:
    patch_ai_turn_orders(ROOT / "AI.smali")
    patch_ai_style_logs(ROOT / "AI_Style.smali")
    patch_diplomacy_aggressiveness(ROOT / "AI_Style.smali")
    patch_end_of_input_orders(ROOT / "Game_Action.smali")
    patch_turn_actions_revolts(ROOT / "Turn_Actions.smali")
    print("ALL OK")


if __name__ == "__main__":
    main()
