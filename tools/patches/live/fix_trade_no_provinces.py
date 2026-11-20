#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Disable province/territory trading in diplomacy Trade Request panel.

- Hide Provinces option on TradeRequest Side menus
- No-op province-select buttons on TradeRequest main panel
- Skip copying selected provinces for TRADE_LEFT/RIGHT
- Clear lProvinces on sendTradeRequest and acceptTradeRequest
"""
from __future__ import annotations

from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
LUK = ROOT / "AOE_unpacked" / "smali" / "age" / "of" / "civilizations2" / "jakowski" / "lukasz"


def replace_once(path: Path, old: str, new: str, label: str) -> None:
    text = path.read_text(encoding="utf-8")
    if new.strip() and new in text and old not in text:
        print(f"[skip] {label}: already patched")
        return
    if "Gemorin:" in new and "Gemorin:" in text and label.split()[0] in text:
        # soft skip if marker already present for this change
        marker = [ln for ln in new.splitlines() if "Gemorin:" in ln]
        if marker and marker[0] in text:
            print(f"[skip] {label}: marker present")
            return
    if old not in text:
        raise SystemExit(f"[fail] {label}: pattern not found in {path.name}")
    path.write_text(text.replace(old, new, 1), encoding="utf-8")
    print(f"[ok] {label}")


def patch_accept() -> None:
    path = LUK / "DiplomacyManager.smali"
    old = """.method protected static final acceptTradeRequest(IILage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;)V
    .locals 11

    iget-object v6, p2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-boolean v6, v6, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->militaryAccess:Z
"""
    new = """.method protected static final acceptTradeRequest(IILage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;)V
    .locals 11

    # Gemorin: territory cannot be bought/sold via trade — strip provinces before apply
    iget-object v6, p2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->lProvinces:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v6, p2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listRight:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->lProvinces:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v6, p2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-boolean v6, v6, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->militaryAccess:Z
"""
    replace_once(path, old, new, "acceptTradeRequest clear provinces")


def patch_send() -> None:
    path = LUK / "DiplomacyManager.smali"
    text = path.read_text(encoding="utf-8")
    if "Gemorin: strip provinces from outbound trade requests" in text:
        print("[skip] sendTradeRequest: already patched")
        return
    marker = ".method protected static final sendTradeRequest(IILage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;)Z"
    if marker not in text:
        raise SystemExit("[fail] sendTradeRequest not found")
    idx = text.find(marker)
    locals_idx = text.find(".locals ", idx)
    line_end = text.find("\n", locals_idx)
    insert_at = line_end + 1
    needle = """
    # Gemorin: strip provinces from outbound trade requests
    iget-object v0, p2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listRight:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
"""
    path.write_text(text[:insert_at] + needle + text[insert_at:], encoding="utf-8")
    print("[ok] sendTradeRequest strip provinces")


def patch_side_hide_provinces_button() -> None:
    path = LUK / "Menu_InGame_TradeRequest_Side.smali"
    old = """    invoke-direct/range {v2 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side;Ljava/lang/String;IIIIIZZ)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side$3;
"""
    new = """    invoke-direct/range {v2 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side;Ljava/lang/String;IIIIIZZ)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # Gemorin: remove Provinces from trade side panel
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side$2;->setVisible(Z)V

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side$2;->setClickable(Z)V

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side$3;
"""
    replace_once(path, old, new, "Side hide Provinces button")


def patch_side_pswitch_provinces_noop() -> None:
    path = LUK / "Menu_InGame_TradeRequest_Side.smali"
    old = """    :pswitch_1
    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side;->left:Z

    if-eqz v1, :cond_8
"""
    new = """    :pswitch_1
    # Gemorin: province trade disabled
    goto :goto_5

    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side;->left:Z

    if-eqz v1, :cond_8
"""
    replace_once(path, old, new, "Side pswitch_1 no-op")


def patch_trade_request_buttons_noop() -> None:
    for name in ("Menu_InGame_TradeRequest$4.smali", "Menu_InGame_TradeRequest$13.smali"):
        path = LUK / name
        old = """.method protected actionElement(I)V
    .locals 3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;
"""
        new = """.method protected actionElement(I)V
    .locals 3

    # Gemorin: province trade disabled
    return-void

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;
"""
        replace_once(path, old, new, f"{name} actionElement no-op")


def patch_select_provinces_skip_trade() -> None:
    path = LUK / "Menu_InGame_SelectProvinces.smali"
    old_left = """    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$TypeOfAction;->TRADE_LEFT:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$TypeOfAction;

    if-ne v1, v2, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_0
"""
    new_left = """    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$TypeOfAction;->TRADE_LEFT:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$TypeOfAction;

    if-ne v1, v2, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    # Gemorin: do not accept TRADE_LEFT province selections
    goto :cond_0

    :goto_0
"""
    replace_once(path, old_left, new_left, "SelectProvinces TRADE_LEFT skip add")

    old_right = """    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$TypeOfAction;->TRADE_RIGHT:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$TypeOfAction;

    if-ne v1, v2, :cond_3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listRight:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_1
"""
    new_right = """    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$TypeOfAction;->TRADE_RIGHT:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$TypeOfAction;

    if-ne v1, v2, :cond_3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listRight:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    # Gemorin: do not accept TRADE_RIGHT province selections
    goto :cond_2

    :goto_1
"""
    replace_once(path, old_right, new_right, "SelectProvinces TRADE_RIGHT skip add")


def patch_main_panel_never_show_province_rows() -> None:
    path = LUK / "Menu_InGame_TradeRequest.smali"
    text = path.read_text(encoding="utf-8")

    old_left = """    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->lProvinces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2
"""
    new_left = """    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->lProvinces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    # Gemorin: never show LEFT provinces trade row
    const/4 v2, 0x0

    if-lez v2, :cond_2
"""
    if "Gemorin: never show LEFT provinces trade row" in text:
        print("[skip] TradeRequest LEFT province row")
    else:
        if old_left not in text:
            raise SystemExit("[fail] LEFT province row pattern")
        text = text.replace(old_left, new_left, 1)
        print("[ok] TradeRequest LEFT province row hidden")

    old_right = """    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->lProvinces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b
"""
    new_right = """    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->lProvinces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    # Gemorin: never show RIGHT provinces trade row
    const/4 v2, 0x0

    if-lez v2, :cond_b
"""
    if "Gemorin: never show RIGHT provinces trade row" in text:
        print("[skip] TradeRequest RIGHT province row")
    else:
        if old_right not in text:
            raise SystemExit("[fail] RIGHT province row pattern (:cond_b)")
        text = text.replace(old_right, new_right, 1)
        print("[ok] TradeRequest RIGHT province row hidden")

    path.write_text(text, encoding="utf-8")


def main() -> None:
    patch_accept()
    patch_send()
    patch_side_hide_provinces_button()
    patch_side_pswitch_provinces_noop()
    patch_trade_request_buttons_noop()
    patch_select_provinces_skip_trade()
    patch_main_panel_never_show_province_rows()
    print("done")


if __name__ == "__main__":
    main()
