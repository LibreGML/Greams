# -*- coding: utf-8 -*-
"""Rewrite CreateScenario civilization picker to use CivSelectCache."""
from __future__ import print_function
import os
import re

ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))
SMALI = os.path.join(
    ROOT,
    "AOE_unpacked",
    "smali",
    "age",
    "of",
    "civilizations2",
    "jakowski",
    "lukasz",
)


def replace_method(path, method_sig, new_body):
    text = open(path, "r", encoding="utf-8").read()
    # method_sig like '.method protected constructor <init>()V'
    start = text.find(method_sig)
    if start < 0:
        raise SystemExit("method not found in %s: %s" % (path, method_sig))
    end = text.find(".end method", start)
    if end < 0:
        raise SystemExit("end method missing: %s" % path)
    end = end + len(".end method")
    new_text = text[:start] + new_body.rstrip() + "\n" + text[end:]
    open(path, "w", encoding="utf-8", newline="\n").write(new_text)
    print("patched", os.path.basename(path), method_sig)


LIST_CTOR = r'''.method protected constructor <init>()V
    .locals 28

    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Civilizations_Select_List;->lCivsTags:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Civilizations_Select_List;->lFlags:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Civilizations_Select_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Civilizations_Select_List;->lCivsTags:Ljava/util/List;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->fillSortedLists(Ljava/util/List;Ljava/util/List;)V

    const/high16 v16, 0x42480000    # 50.0f

    const/4 v11, 0x0

    const/16 v17, 0x0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    if-eqz v0, :cond_check_letter

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_check_letter

    const/16 v17, 0x1

    goto :cond_after_mode

    :cond_check_letter
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    if-nez v0, :cond_after_mode

    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Civilizations_Select_List$2;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v18, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v11, v8

    move/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Civilizations_Select_List$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Civilizations_Select_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    :cond_after_mode
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->menuCreateScenario_SelectCivilizations_UpdateTitle(I)V

    const/4 v12, 0x0

    :goto_rows
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_done_rows

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v21, v0

    add-int v18, v12, v11

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v0, v0, v16

    float-to-int v0, v0

    const/16 v23, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v2, v2, v18

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v4, v18, 0x1

    mul-int v3, v3, v4

    add-int v24, v2, v3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v25, v2, v3

    sget v26, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v27, 0x1

    move-object/from16 v20, v1

    move/from16 v22, v0

    invoke-direct/range {v20 .. v27}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v17, :cond_flag_all

    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Civilizations_Select_List$1;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int v3, v0, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v0, v0, v18

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v2, v18, 0x1

    mul-int v1, v1, v2

    add-int v4, v0, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    add-int v5, v0, v1

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v7, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    move v2, v12

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Civilizations_Select_List$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Civilizations_Select_List;IIIIIZ)V

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :cond_after_flag

    :cond_flag_all
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Civilizations_Select_List$3;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int v3, v0, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v0, v0, v18

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v2, v18, 0x1

    mul-int v1, v1, v2

    add-int v4, v0, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    add-int v5, v0, v1

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v7, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    move v2, v12

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Civilizations_Select_List$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Civilizations_Select_List;IIIIIZ)V

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_after_flag
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Civilizations_Select_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_rows

    :cond_done_rows
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v3, v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    sub-int/2addr v0, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v6, v10

    invoke-virtual/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Civilizations_Select_List;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Civilizations_Select_List;->updateLanguage()V

    return-void
.end method
'''


def patch_alphabet():
    path = os.path.join(SMALI, "Menu_CreateScenario_Civilizations_Select_Alphabet.smali")
    text = open(path, "r", encoding="utf-8").read()
    # Replace from ':goto_0' catalog load through bubble sort end (:cond_10) with cache fill.
    # Keep the ALL button above :goto_0 and the letter-button building from :cond_10 / :goto_d.
    m = re.search(
        r"(    :goto_0\n)(.*?)(    :cond_10\n    const/4 v0, 0x0\n\n    :goto_d\n)",
        text,
        flags=re.S,
    )
    if not m:
        raise SystemExit("alphabet block not found")
    replacement = m.group(1) + """
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Civilizations_Select_Alphabet;->lCharacters:Ljava/util/List;

    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Civilizations_Select_Alphabet;->lCharacters:Ljava/util/List;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->fillAlphabet(Ljava/util/List;)V

    const/4 v2, 0x0

    const/4 v5, 0x1

""" + m.group(3)
    text = text[: m.start()] + replacement + text[m.end() :]
    open(path, "w", encoding="utf-8", newline="\n").write(text)
    print("patched Menu_CreateScenario_Civilizations_Select_Alphabet.smali alphabet build")


def main():
    list_path = os.path.join(SMALI, "Menu_CreateScenario_Civilizations_Select_List.smali")
    replace_method(list_path, ".method protected constructor <init>()V", LIST_CTOR)
    patch_alphabet()
    print("OK")


if __name__ == "__main__":
    main()
