# -*- coding: utf-8 -*-
"""Rebuild Menu_InGame_FlagAction_Console as a right-side floating window."""
from pathlib import Path

p = Path(r"C:/Users/17786/Mycode/AOE/AOE_unpacked/smali/age/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console.smali")
t = p.read_text(encoding="utf-8")

new_ctor = r""".method protected constructor <init>()V
    .locals 12

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    # --- top offset: below HUD (same chrome stack as before) ---
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v6, v0, v1

    # --- bottom reserve: minimap + padding + thin strip ---
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v1

    # usable vertical band
    sub-int/2addr v0, v6

    # panel height ≈ 52% of usable band (floating card, not full strip)
    int-to-float v1, v0

    const v2, 0x3f051eb8    # 0.52f

    mul-float/2addr v1, v2

    float-to-int v8, v1

    # clamp height to ~48% of screen so it stays a "small window"
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    const v2, 0x3ef5c28f    # 0.48f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-gt v8, v1, :clamp_h

    goto :after_h

    :clamp_h
    move v8, v1

    :after_h
    # panel width ≈ 38% of game width (Android freeform / PiP feel)
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v2, v1

    const v3, 0x3ec28f5c    # 0.38f

    mul-float/2addr v2, v3

    float-to-int v7, v2

    # minimum width floor: 30% screen
    int-to-float v2, v1

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    if-lt v7, v2, :min_w

    goto :after_w

    :min_w
    move v7, v2

    :after_w
    # right-align: X = GAME_WIDTH - width - padding*2
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v7

    sub-int v5, v1, v2

    # slight gap under HUD
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v6, v1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    # scroll content hit area (inner)
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v1, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v1, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v5, v7, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    mul-int/lit16 v6, v1, 0x28a

    const/4 v7, 0x1

    move-object v2, v0

    # FIX: above clobbered panel locals — rebuild carefully below
    invoke-direct/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;-><init>(IIIIZ)V

    return-void
.end method
"""

# The draft above corrupted registers. Write a clean version with careful register allocation.
new_ctor = r""".method protected constructor <init>()V
    .locals 14

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    # v10 = topY (below HUD)
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v10, v0, v1

    # v11 = usable height below topY above minimap/keyboard reserve
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sub-int v11, v0, v10

    # v12 = panelH = min(usable*0.52, screen*0.46)
    int-to-float v0, v11

    const v1, 0x3f051eb8    # 0.52f

    mul-float/2addr v0, v1

    float-to-int v12, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3eeb851f    # 0.46f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-gt v12, v0, :cond_h

    goto :done_h

    :cond_h
    move v12, v0

    :done_h
    # v13 = panelW = max(screen*0.38, screen*0.32)
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v1, v0

    const v2, 0x3ec28f5c    # 0.38f

    mul-float/2addr v1, v2

    float-to-int v13, v1

    int-to-float v1, v0

    const v2, 0x3ea3d70a    # 0.32f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-lt v13, v1, :cond_w

    goto :done_w

    :cond_w
    move v13, v1

    :done_w
    # v9 = panelX right-aligned
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v13

    sub-int v9, v0, v1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v1, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v1, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v4, v13, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    mul-int/lit16 v5, v1, 0x28a

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;-><init>(IIIIZ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    move v4, v13

    move v5, v12

    move v6, v6

    invoke-direct/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;-><init>(IIIIZ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v10_flag, 0x0

    const/4 v11_flag, 0x0

    move-object v3, p0

    move v5, v9

    move v6, v10

    move v7, v13

    move v8, v12

    # list is in local that was v8 ArrayList — overwritten. Keep list in v14.
    # REWRITE final init call properly — see fixed block below

    return-void
.end method
"""

# Final clean constructor — no register clobber bugs
new_ctor = r""".method protected constructor <init>()V
    .locals 15

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    # ---- topY (v10): under top HUD ----
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x5

    add-int v10, v0, v1

    # ---- usableH (v11) ----
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sub-int v11, v0, v10

    # ---- panelH (v12) = min(usable*0.52, screen*0.46) ----
    int-to-float v0, v11

    const v1, 0x3f051eb8    # 0.52f

    mul-float/2addr v0, v1

    float-to-int v12, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3eeb851f    # 0.46f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-gt v12, v0, :cond_clamp_h

    goto :after_clamp_h

    :cond_clamp_h
    move v12, v0

    :after_clamp_h
    # ---- panelW (v13) = max(screen*0.38, screen*0.32) ----
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v1, v0

    const v2, 0x3ec28f5c    # 0.38f

    mul-float/2addr v1, v2

    float-to-int v13, v1

    int-to-float v1, v0

    const v2, 0x3ea3d70a    # 0.32f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-lt v13, v1, :cond_clamp_w

    goto :after_clamp_w

    :cond_clamp_w
    move v13, v1

    :after_clamp_w
    # ---- panelX (v9) right aligned ----
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v13

    sub-int v9, v0, v1

    # ---- elements ----
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v1, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v1, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v4, v13, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    mul-int/lit16 v5, v1, 0x28a

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;-><init>(IIIIZ)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    move v4, v13

    move v5, v12

    invoke-direct/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;-><init>(IIIIZ)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # initMenu(title=null, x, y, w, h, list, false, false)
    move-object v3, p0

    const/4 v4, 0x0

    move v5, v9

    move v6, v10

    move v7, v13

    move v8, v12

    move-object v9, v14

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method
"""

import re
pat = re.compile(r"\.method protected constructor <init>\(\)V.*?^\.end method", re.M | re.S)
m = pat.search(t)
if not m:
    raise SystemExit("constructor not found")
t2 = pat.sub(new_ctor, t, count=1)
p.write_text(t2, encoding="utf-8", newline="\n")
print("console float ctor patched", m.start(), "->", len(new_ctor))
