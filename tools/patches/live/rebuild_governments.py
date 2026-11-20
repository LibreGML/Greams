# -*- coding: utf-8 -*-
"""Rebuild Governments.json — comparative politics + political economy balance.

Design axes (textbook + world-history priors):
  - Fiscal legitimacy (ACCEPTABLE_TAXATION) vs extractive capacity (INCOME_TAXATION)
  - Market/industrial productivity (INCOME_PRODUCTION, COMMERCE) vs command/extraction
  - Knowledge regime (RESEARCH_COST): open competition & universities vs dogma/predation
  - Weberian admin span (ADMIN_* , CONTROL_RANGE)
  - Linz/Huntington instability: personalist/sultanist/warlord/provisional high;
    consensus/constitutional monarchy low
  - Military posture: democracies defense-biased; fascist/horde/junta attack-biased;
    feudal/city walls defense; guerrillas tribal/rebel/warlord
  - Avoid BUG-002: never pair high INCOME_PRODUCTION with near-zero MILITARY_UPKEEP/ADMIN

Safety envelope (all archetypes):
  RESEARCH_COST 0.95–1.35 | INCOME_* 0.85–1.18 | MILITARY_UPKEEP 0.90–1.35
  ADMINISTRATION_COST 0.70–1.40 | RECRUITABILITY 0.95–1.30 | COST_OF_RECRUIT ≥ 14
  ATTACK≤6 DEFENSE≤8 | ASSIMILATE≤1.5 | MOVEMENT 0.90–1.15

Field name must be REFORMAT_PERIOD (Data_Ideologies); REPLACE_PERIOD crashes Json load.
"""
from __future__ import annotations

import sys
from pathlib import Path

OUT = Path(r"C:\Users\17786\Mycode\AOE\AOE_unpacked\assets\game\Governments.json")

# Extra_Tag / Image / slot order frozen for crowns, civ suffixes, scenario compatibility.
# Deleted non-regime labels: 无产阶级专政, 苏维埃政权, 人民阵线, 工人代表苏维埃,
# 布尔什维克一党制(并入马列一党制), 复兴党一党制→一党霸权制, 计划经济/福利国家/社民(非政体).

SLOTS = [
    # name, tag, image, gid, ai, archetype
    ("议会制民主政体", "", "", 0, "DEMOCRACY", "parliamentary"),
    ("总统制共和政体", "稻", "稻", 76, "DEMOCRACY", "presidential"),
    ("半总统制", "进", "进", 0, "DEMOCRACY", "semi_presidential"),
    ("联邦共和制", "r", "r", 0, "DEMOCRACY", "federal_republic"),
    ("共识民主制", "盖", "盖", 0, "DEMOCRACY", "consensus_democracy"),
    ("议会君主立宪制", "1", "1", 0, "DEMOCRACY", "parliamentary_monarchy"),
    ("二元君主立宪制", "ys", "ys", 0, "DEMOCRACY", "dual_constitutional_monarchy"),
    ("绝对君主制", "bgd", "bgd", 0, "FASCISM", "absolute_monarchy"),
    ("封建君主制", "m", "m", 0, "DEMOCRACY", "feudal_monarchy"),
    ("开明专制", "三", "三", 17, "FASCISM", "enlightened_absolutism"),
    ("官僚帝国制", "秦", "秦", 0, "FASCISM", "imperial_bureaucracy"),
    ("神权政治", "神", "神", 0, "FASCISM", "theocracy"),
    ("哈里发国", "专", "专", 0, "FASCISM", "caliphate"),
    ("贵族共和制", "保", "保", 0, "DEMOCRACY", "aristocratic_republic"),
    ("寡头共和制", "cc", "cc", 76, "DEMOCRACY", "oligarchic_republic"),
    ("商人共和制", "(", "(", 0, "CITYSTATE", "merchant_republic"),
    ("城邦", "s", "s", 0, "CITYSTATE", "city_state"),
    ("酋邦", "t", "t", 0, "UNCIVILIZED", "tribal"),
    ("游牧汗国", "h", "h", 0, "HORDE", "horde"),
    ("分封领主制", "zh", "zh", 0, "DEMOCRACY", "feudal_principality"),
    ("马克思列宁主义一党制", "c", "c", 0, "COMMUNISM", "ml_single_party"),
    ("人民民主国家", "马", "马", 0, "COMMUNISM", "peoples_democracy"),
    ("工人自治制", "工", "工", 0, "COMMUNISM", "workers_self_management"),
    ("法西斯独裁政体", "f", "f", 0, "FASCISM", "fascist_dictatorship"),
    ("极权主义政体", "长", "长", 0, "FASCISM", "totalitarianism"),
    ("威权主义政体", "dc", "dc", 0, "FASCISM", "authoritarianism"),
    ("苏丹制", "家", "家", 0, "FASCISM", "sultanism"),
    ("一党霸权制", "fu", "fu", 0, "FASCISM", "hegemonic_party"),
    ("法团主义国家", "gt", "gt", 76, "FASCISM", "corporatist_state"),
    ("军政府", "军", "军", 0, "FASCISM", "junta"),
    ("军部支配体制", "J", "J", 0, "FASCISM", "military_clique"),
    ("个人独裁制", "毛", "毛", 49, "FASCISM", "personalist"),
    ("发展型国家", "企", "企", 0, "FASCISM", "developmental_state"),
    ("训政", "训", "训", 0, "FASCISM", "political_tutelage"),
    ("凯末尔主义共和制", "凯", "凯", 0, "DEMOCRACY", "kemalist"),
    ("国民公会制", "G", "G", 76, "DEMOCRACY", "national_convention"),
    ("殖民政府", "殖", "殖", 0, "DEMOCRACY", "colonial"),
    ("自治领", "自", "自", 0, "DEMOCRACY", "dominion"),
    ("临时政府", "临", "临", 0, "DEMOCRACY", "provisional"),
    ("军阀政治", "jf", "jf", 0, "FASCISM", "warlord"),
    ("叛乱政权", "u", "u", 0, "REBELS", "rebels"),
    ("委员会制", "C", "C", 0, "DEMOCRACY", "directory"),
    ("阿拉伯社会主义共和制", "na", "na", 0, "COMMUNISM", "nasserist"),
    ("过渡政权", "人", "人", 0, "COMMUNISM", "revolutionary_regime"),
    ("责任内阁制", "社", "社", 0, "DEMOCRACY", "parliamentary"),
    ("政教君主制", "ac", "ac", 0, "FASCISM", "confessional_monarchy"),
]


def _arch(
    *,
    tax_ok, goods, invest, research,
    inc_tax, inc_prod, pop, eco,
    mil_up, adm, adm_dist, adm_cap,
    commerce, diplo, control,
    instability, assimilate, move,
    c_move, c_same, c_own, c_recruit, c_disband, c_plunder,
    atk, dfn, tactics, guerrilla,
    recruit, recruit_other, manpower,
    reform, election, support_chg, support_inc,
    age, revolutionary, colors, attrs,
    high_autonomy=False, distinctive=False,
    vassal_war=False, prince_vassal=False, cant_change_vassal_gov=False,
):
    return dict(
        ACCEPTABLE_TAXATION=tax_ok, MIN_GOODS=goods, MIN_INVESTMENTS=invest, RESEARCH_COST=research,
        INCOME_TAXATION=inc_tax, INCOME_PRODUCTION=inc_prod, POP_GROWTH_BONUS=pop, ECO_GROWTH_BONUS=eco,
        MILITARY_UPKEEP=mil_up, ADMINISTRATION_COST=adm, ADMINISTRATION_COST_DISTANCE=adm_dist,
        ADMINISTRATION_COST_CAPITAL=adm_cap, COMMERCE_RANGE=commerce, DIPLOMACY_RANGE=diplo,
        CONTROL_RANGE=control, INSTABILITY=instability, ASSIMILATE_RATE=assimilate,
        MOVEMENT_MODIFIER=move,
        COST_OF_MOVE=c_move, COST_OF_MOVE_TO_THE_SAME_PROV=c_same, COST_OF_MOVE_OWN_PROV=c_own,
        COST_OF_RECRUIT=c_recruit, COST_OF_DISBAND=c_disband, COST_OF_PLUNDER=c_plunder,
        ATTACK_BONUS=atk, DEFENSE_BONUS=dfn, MILITARY_TACTICS=tactics, GURRILLA=guerrilla,
        RECRUITABILITY=recruit, RECRUITABILITY_OTHER=recruit_other, MANPOWER_BONUS=manpower,
        REFORMAT_PERIOD=reform, ELECTION_PERIOD=election,
        SUPPORT_RATE_CHANGING=support_chg, SUPPORT_RATE_INCREASING=support_inc,
        age=age, revolutionary=revolutionary, colors=colors, attrs=attrs,
        HIGH_AUTONOMY=high_autonomy, DISTINCTIVE=distinctive,
        VASSAL_CAN_DECLARE_WAR=vassal_war, PRINCE_WILL_BE_VASSALIZED=prince_vassal,
        CANT_CHANGE_GOV_OF_VASSAL=cant_change_vassal_gov,
    )


# ---------------------------------------------------------------------------
# Archetypes — each block cites the historical / PE rationale in one line.
# ---------------------------------------------------------------------------
ARCH = {
    # Westminster: high soft power, professional army cost, defense coalitions, consent taxation.
    "parliamentary": _arch(
        tax_ok=0.64, goods=0.19, invest=0.21, research=0.98,
        inc_tax=1.03, inc_prod=1.04, pop=0.02, eco=0.035,
        mil_up=1.14, adm=1.04, adm_dist=1.06, adm_cap=0.52,
        commerce=1.14, diplo=1.20, control=1.04,
        instability=0.11, assimilate=0.82, move=1.00,
        c_move=10, c_same=5, c_own=6, c_recruit=23, c_disband=17, c_plunder=17,
        atk=0, dfn=5, tactics=1.12, guerrilla=0.9,
        recruit=1.08, recruit_other=0.40, manpower=1.0,
        reform=0, election=60, support_chg=0.44, support_inc=1.40,
        age=5, revolutionary=False, colors=(68, 194, 33),
        attrs=dict(DEMOCRACY=5, CENTRALIZATION=3, RELIGIOUSNESS=2, SOCIALIZATION=3, COMMUNISM=1, NATIONALISM=2, MONARCHY_TRADITION=1, MILITARISM=2),
    ),
    # Lijphart consensus: lowest conflict, high welfare floor, slow martial decision, strong diplo.
    "consensus_democracy": _arch(
        tax_ok=0.66, goods=0.20, invest=0.22, research=0.96,
        inc_tax=1.04, inc_prod=1.04, pop=0.02, eco=0.032,
        mil_up=1.06, adm=1.14, adm_dist=1.04, adm_cap=0.55,
        commerce=1.12, diplo=1.22, control=0.98,
        instability=0.08, assimilate=0.78, move=1.00,
        c_move=10, c_same=5, c_own=6, c_recruit=23, c_disband=17, c_plunder=16,
        atk=0, dfn=4, tactics=1.06, guerrilla=0.8,
        recruit=1.06, recruit_other=0.42, manpower=0.9,
        reform=0, election=50, support_chg=0.38, support_inc=1.35,
        age=7, revolutionary=False, colors=(70, 160, 100),
        attrs=dict(DEMOCRACY=5, CENTRALIZATION=2, RELIGIOUSNESS=1, SOCIALIZATION=4, COMMUNISM=2, NATIONALISM=2, MONARCHY_TRADITION=1, MILITARISM=1),
    ),
    # Presidential (US/LatAm ideal-type): stronger executive control, growth, higher mil budget.
    "presidential": _arch(
        tax_ok=0.58, goods=0.17, invest=0.20, research=0.99,
        inc_tax=1.02, inc_prod=1.07, pop=0.025, eco=0.040,
        mil_up=1.16, adm=1.00, adm_dist=1.04, adm_cap=0.48,
        commerce=1.14, diplo=1.10, control=1.10,
        instability=0.14, assimilate=0.88, move=1.02,
        c_move=10, c_same=5, c_own=6, c_recruit=22, c_disband=17, c_plunder=16,
        atk=1, dfn=3, tactics=1.14, guerrilla=0.7,
        recruit=1.12, recruit_other=0.38, manpower=1.15,
        reform=0, election=48, support_chg=0.50, support_inc=1.35,
        age=6, revolutionary=False, colors=(40, 90, 180),
        attrs=dict(DEMOCRACY=5, CENTRALIZATION=4, RELIGIOUSNESS=2, SOCIALIZATION=2, COMMUNISM=1, NATIONALISM=3, MONARCHY_TRADITION=1, MILITARISM=3),
    ),
    # Semi-presidential (France V): dual executive — diplo + crisis militarism between the above.
    "semi_presidential": _arch(
        tax_ok=0.60, goods=0.18, invest=0.20, research=0.99,
        inc_tax=1.03, inc_prod=1.05, pop=0.02, eco=0.032,
        mil_up=1.14, adm=1.04, adm_dist=1.05, adm_cap=0.50,
        commerce=1.12, diplo=1.18, control=1.08,
        instability=0.13, assimilate=0.86, move=1.00,
        c_move=10, c_same=5, c_own=6, c_recruit=22, c_disband=17, c_plunder=16,
        atk=1, dfn=4, tactics=1.13, guerrilla=0.85,
        recruit=1.10, recruit_other=0.40, manpower=1.05,
        reform=0, election=50, support_chg=0.47, support_inc=1.35,
        age=7, revolutionary=False, colors=(50, 110, 200),
        attrs=dict(DEMOCRACY=4, CENTRALIZATION=4, RELIGIOUSNESS=2, SOCIALIZATION=3, COMMUNISM=1, NATIONALISM=3, MONARCHY_TRADITION=1, MILITARISM=3),
    ),
    # Federal: local fiscal competition → growth/commerce; centrifugal instability; cheap distance admin.
    "federal_republic": _arch(
        tax_ok=0.58, goods=0.17, invest=0.22, research=0.97,
        inc_tax=0.98, inc_prod=1.08, pop=0.025, eco=0.042,
        mil_up=1.10, adm=1.10, adm_dist=0.92, adm_cap=0.42,
        commerce=1.18, diplo=1.08, control=0.92,
        instability=0.16, assimilate=0.72, move=1.00,
        c_move=11, c_same=5, c_own=6, c_recruit=22, c_disband=17, c_plunder=16,
        atk=0, dfn=5, tactics=1.08, guerrilla=1.15,
        recruit=1.08, recruit_other=0.42, manpower=1.0,
        reform=0, election=55, support_chg=0.42, support_inc=1.28,
        age=6, revolutionary=False, colors=(30, 70, 160),
        attrs=dict(DEMOCRACY=5, CENTRALIZATION=2, RELIGIOUSNESS=2, SOCIALIZATION=3, COMMUNISM=1, NATIONALISM=2, MONARCHY_TRADITION=1, MILITARISM=2),
        high_autonomy=True,
    ),
    # Constitutional monarchy: symbolic continuity → lowest elite instability, high soft power.
    "parliamentary_monarchy": _arch(
        tax_ok=0.60, goods=0.18, invest=0.20, research=1.00,
        inc_tax=1.01, inc_prod=1.05, pop=0.02, eco=0.032,
        mil_up=1.12, adm=1.00, adm_dist=1.04, adm_cap=0.48,
        commerce=1.12, diplo=1.22, control=1.06,
        instability=0.09, assimilate=0.88, move=1.00,
        c_move=10, c_same=5, c_own=6, c_recruit=22, c_disband=16, c_plunder=16,
        atk=0, dfn=5, tactics=1.10, guerrilla=0.7,
        recruit=1.08, recruit_other=0.38, manpower=1.0,
        reform=0, election=55, support_chg=0.38, support_inc=1.28,
        age=5, revolutionary=False, colors=(180, 160, 40),
        attrs=dict(DEMOCRACY=4, CENTRALIZATION=3, RELIGIOUSNESS=3, SOCIALIZATION=2, COMMUNISM=1, NATIONALISM=3, MONARCHY_TRADITION=5, MILITARISM=2),
    ),
    # Dualist constitutional (Kaiserreich/Meiji early): crown still commands army; parliament weak.
    "dual_constitutional_monarchy": _arch(
        tax_ok=0.52, goods=0.15, invest=0.17, research=1.04,
        inc_tax=1.02, inc_prod=1.02, pop=0.015, eco=0.022,
        mil_up=1.18, adm=1.12, adm_dist=1.12, adm_cap=0.52,
        commerce=1.02, diplo=1.10, control=1.08,
        instability=0.17, assimilate=0.90, move=0.98,
        c_move=10, c_same=5, c_own=6, c_recruit=21, c_disband=15, c_plunder=15,
        atk=2, dfn=4, tactics=1.10, guerrilla=0.75,
        recruit=1.10, recruit_other=0.34, manpower=1.1,
        reform=0, election=0, support_chg=0.34, support_inc=1.18,
        age=5, revolutionary=False, colors=(160, 120, 60),
        attrs=dict(DEMOCRACY=3, CENTRALIZATION=4, RELIGIOUSNESS=3, SOCIALIZATION=2, COMMUNISM=1, NATIONALISM=4, MONARCHY_TRADITION=5, MILITARISM=4),
    ),
    # Absolute: high extractive tax + court capital; weak market/research vs liberal peers.
    "absolute_monarchy": _arch(
        tax_ok=0.48, goods=0.13, invest=0.13, research=1.12,
        inc_tax=1.10, inc_prod=0.96, pop=0.012, eco=0.012,
        mil_up=1.20, adm=1.12, adm_dist=1.22, adm_cap=0.40,
        commerce=0.92, diplo=1.02, control=1.16,
        instability=0.18, assimilate=1.02, move=1.00,
        c_move=10, c_same=5, c_own=5, c_recruit=21, c_disband=15, c_plunder=13,
        atk=2, dfn=4, tactics=1.04, guerrilla=0.55,
        recruit=1.10, recruit_other=0.30, manpower=1.05,
        reform=0, election=0, support_chg=0.30, support_inc=1.18,
        age=4, revolutionary=False, colors=(140, 40, 40),
        attrs=dict(DEMOCRACY=1, CENTRALIZATION=5, RELIGIOUSNESS=4, SOCIALIZATION=1, COMMUNISM=1, NATIONALISM=3, MONARCHY_TRADITION=5, MILITARISM=4),
        cant_change_vassal_gov=True,
    ),
    # Feudal monarchy: castle defense, fragmented fiscal base, high distance cost, slow move.
    "feudal_monarchy": _arch(
        tax_ok=0.42, goods=0.11, invest=0.10, research=1.22,
        inc_tax=0.90, inc_prod=0.92, pop=0.008, eco=0.008,
        mil_up=1.02, adm=1.22, adm_dist=1.38, adm_cap=0.72,
        commerce=0.82, diplo=0.88, control=0.78,
        instability=0.22, assimilate=0.68, move=0.92,
        c_move=12, c_same=7, c_own=5, c_recruit=19, c_disband=13, c_plunder=11,
        atk=1, dfn=7, tactics=0.92, guerrilla=1.6,
        recruit=0.98, recruit_other=0.28, manpower=0.75,
        reform=0, election=0, support_chg=0.28, support_inc=1.08,
        age=2, revolutionary=False, colors=(120, 80, 40),
        attrs=dict(DEMOCRACY=1, CENTRALIZATION=1, RELIGIOUSNESS=4, SOCIALIZATION=1, COMMUNISM=1, NATIONALISM=2, MONARCHY_TRADITION=5, MILITARISM=3),
        high_autonomy=True, prince_vassal=True,
    ),
    # Feudal principality: more fragmented than kingdom; vassal autonomy.
    "feudal_principality": _arch(
        tax_ok=0.40, goods=0.11, invest=0.10, research=1.25,
        inc_tax=0.88, inc_prod=0.90, pop=0.008, eco=0.006,
        mil_up=1.05, adm=1.18, adm_dist=1.42, adm_cap=0.78,
        commerce=0.78, diplo=0.82, control=0.72,
        instability=0.26, assimilate=0.62, move=0.90,
        c_move=12, c_same=7, c_own=5, c_recruit=19, c_disband=13, c_plunder=10,
        atk=1, dfn=6, tactics=0.90, guerrilla=1.9,
        recruit=0.96, recruit_other=0.26, manpower=0.7,
        reform=0, election=0, support_chg=0.30, support_inc=1.05,
        age=2, revolutionary=False, colors=(100, 70, 35),
        attrs=dict(DEMOCRACY=1, CENTRALIZATION=1, RELIGIOUSNESS=4, SOCIALIZATION=1, COMMUNISM=1, NATIONALISM=2, MONARCHY_TRADITION=4, MILITARISM=3),
        high_autonomy=True, prince_vassal=True, vassal_war=True,
    ),
    # Enlightened absolutism (Frederick/Joseph II): reform bureaucracy + science, still crown-led.
    "enlightened_absolutism": _arch(
        tax_ok=0.54, goods=0.15, invest=0.19, research=0.95,
        inc_tax=1.06, inc_prod=1.06, pop=0.018, eco=0.030,
        mil_up=1.16, adm=1.02, adm_dist=1.08, adm_cap=0.42,
        commerce=1.04, diplo=1.08, control=1.14,
        instability=0.13, assimilate=1.05, move=1.02,
        c_move=10, c_same=5, c_own=5, c_recruit=21, c_disband=15, c_plunder=13,
        atk=2, dfn=3, tactics=1.14, guerrilla=0.45,
        recruit=1.12, recruit_other=0.34, manpower=1.05,
        reform=0, election=0, support_chg=0.34, support_inc=1.28,
        age=5, revolutionary=False, colors=(150, 100, 50),
        attrs=dict(DEMOCRACY=2, CENTRALIZATION=5, RELIGIOUSNESS=2, SOCIALIZATION=2, COMMUNISM=1, NATIONALISM=3, MONARCHY_TRADITION=4, MILITARISM=4),
    ),
    # Imperial bureaucracy (Qin/Han/Rome): exam/legalist admin, corvée manpower, weak mercantile openness.
    "imperial_bureaucracy": _arch(
        tax_ok=0.56, goods=0.14, invest=0.15, research=1.06,
        inc_tax=1.12, inc_prod=0.98, pop=0.022, eco=0.018,
        mil_up=1.10, adm=1.05, adm_dist=0.95, adm_cap=0.35,
        commerce=0.95, diplo=0.95, control=1.22,
        instability=0.14, assimilate=1.18, move=1.00,
        c_move=10, c_same=5, c_own=5, c_recruit=20, c_disband=14, c_plunder=13,
        atk=1, dfn=6, tactics=1.08, guerrilla=0.7,
        recruit=1.15, recruit_other=0.36, manpower=1.35,
        reform=0, election=0, support_chg=0.28, support_inc=1.22,
        age=1, revolutionary=False, colors=(160, 30, 30),
        attrs=dict(DEMOCRACY=1, CENTRALIZATION=5, RELIGIOUSNESS=2, SOCIALIZATION=2, COMMUNISM=1, NATIONALISM=4, MONARCHY_TRADITION=4, MILITARISM=4),
        cant_change_vassal_gov=True,
    ),
    # Theocracy: confessional cohesion/assimilate; dogma raises research cost; defensive sacral war.
    "theocracy": _arch(
        tax_ok=0.50, goods=0.14, invest=0.12, research=1.28,
        inc_tax=1.04, inc_prod=0.92, pop=0.014, eco=0.008,
        mil_up=1.08, adm=1.16, adm_dist=1.18, adm_cap=0.55,
        commerce=0.85, diplo=0.95, control=1.08,
        instability=0.15, assimilate=1.28, move=0.94,
        c_move=11, c_same=6, c_own=5, c_recruit=22, c_disband=16, c_plunder=14,
        atk=1, dfn=7, tactics=0.94, guerrilla=1.6,
        recruit=1.06, recruit_other=0.36, manpower=0.95,
        reform=0, election=0, support_chg=0.28, support_inc=1.22,
        age=2, revolutionary=False, colors=(100, 80, 140),
        attrs=dict(DEMOCRACY=1, CENTRALIZATION=4, RELIGIOUSNESS=5, SOCIALIZATION=2, COMMUNISM=1, NATIONALISM=2, MONARCHY_TRADITION=3, MILITARISM=2),
        distinctive=True,
    ),
    # Caliphate: early-Islamic commerce + jihad mobility; umma assimilate; later scientific lag as RESEARCH_COST.
    "caliphate": _arch(
        tax_ok=0.50, goods=0.14, invest=0.13, research=1.18,
        inc_tax=1.06, inc_prod=0.96, pop=0.016, eco=0.014,
        mil_up=1.14, adm=1.10, adm_dist=1.22, adm_cap=0.48,
        commerce=1.05, diplo=1.02, control=1.12,
        instability=0.19, assimilate=1.20, move=1.04,
        c_move=9, c_same=5, c_own=5, c_recruit=20, c_disband=14, c_plunder=11,
        atk=4, dfn=3, tactics=1.06, guerrilla=1.4,
        recruit=1.14, recruit_other=0.40, manpower=1.25,
        reform=0, election=0, support_chg=0.32, support_inc=1.28,
        age=3, revolutionary=False, colors=(40, 100, 60),
        attrs=dict(DEMOCRACY=1, CENTRALIZATION=4, RELIGIOUSNESS=5, SOCIALIZATION=2, COMMUNISM=1, NATIONALISM=3, MONARCHY_TRADITION=4, MILITARISM=4),
    ),
    # Confessional monarchy (Habsburg/Saudi ideal-type): dynasty + church/ulema co-rule.
    "confessional_monarchy": _arch(
        tax_ok=0.48, goods=0.14, invest=0.13, research=1.16,
        inc_tax=1.05, inc_prod=0.95, pop=0.014, eco=0.012,
        mil_up=1.14, adm=1.14, adm_dist=1.16, adm_cap=0.50,
        commerce=0.92, diplo=0.98, control=1.10,
        instability=0.18, assimilate=1.14, move=0.97,
        c_move=10, c_same=5, c_own=5, c_recruit=21, c_disband=15, c_plunder=13,
        atk=2, dfn=5, tactics=1.00, guerrilla=1.25,
        recruit=1.08, recruit_other=0.34, manpower=1.0,
        reform=0, election=0, support_chg=0.30, support_inc=1.18,
        age=3, revolutionary=False, colors=(90, 70, 120),
        attrs=dict(DEMOCRACY=1, CENTRALIZATION=4, RELIGIOUSNESS=5, SOCIALIZATION=2, COMMUNISM=1, NATIONALISM=3, MONARCHY_TRADITION=5, MILITARISM=3),
    ),
    # Aristocratic republic (Polish–Lithuanian / early Venice Senate): elite veto, weak mass recruit.
    "aristocratic_republic": _arch(
        tax_ok=0.44, goods=0.14, invest=0.14, research=1.08,
        inc_tax=0.95, inc_prod=1.04, pop=0.008, eco=0.018,
        mil_up=1.10, adm=1.08, adm_dist=1.10, adm_cap=0.55,
        commerce=1.10, diplo=1.12, control=0.95,
        instability=0.18, assimilate=0.75, move=0.97,
        c_move=10, c_same=5, c_own=5, c_recruit=23, c_disband=16, c_plunder=15,
        atk=1, dfn=5, tactics=1.06, guerrilla=0.65,
        recruit=0.95, recruit_other=0.28, manpower=0.65,
        reform=0, election=40, support_chg=0.30, support_inc=1.12,
        age=3, revolutionary=False, colors=(120, 110, 50),
        attrs=dict(DEMOCRACY=2, CENTRALIZATION=2, RELIGIOUSNESS=3, SOCIALIZATION=1, COMMUNISM=1, NATIONALISM=2, MONARCHY_TRADITION=3, MILITARISM=2),
    ),
    # Oligarchic republic: merchant/landed cartel — growth but exclusion → instability.
    "oligarchic_republic": _arch(
        tax_ok=0.48, goods=0.15, invest=0.17, research=1.04,
        inc_tax=1.00, inc_prod=1.08, pop=0.010, eco=0.028,
        mil_up=1.10, adm=1.04, adm_dist=1.04, adm_cap=0.50,
        commerce=1.14, diplo=1.04, control=0.98,
        instability=0.20, assimilate=0.80, move=1.00,
        c_move=10, c_same=5, c_own=5, c_recruit=22, c_disband=16, c_plunder=15,
        atk=1, dfn=4, tactics=1.05, guerrilla=0.8,
        recruit=0.98, recruit_other=0.30, manpower=0.75,
        reform=0, election=35, support_chg=0.36, support_inc=1.15,
        age=3, revolutionary=False, colors=(100, 100, 40),
        attrs=dict(DEMOCRACY=2, CENTRALIZATION=3, RELIGIOUSNESS=2, SOCIALIZATION=1, COMMUNISM=1, NATIONALISM=2, MONARCHY_TRADITION=2, MILITARISM=2),
    ),
    # Merchant republic (Venice/Genoa/Dutch): max commerce/diplo; mercenary land war; low manpower.
    "merchant_republic": _arch(
        tax_ok=0.56, goods=0.17, invest=0.22, research=0.95,
        inc_tax=0.94, inc_prod=1.16, pop=0.014, eco=0.045,
        mil_up=1.08, adm=0.92, adm_dist=0.98, adm_cap=0.40,
        commerce=1.25, diplo=1.22, control=0.85,
        instability=0.15, assimilate=0.78, move=1.06,
        c_move=8, c_same=4, c_own=5, c_recruit=24, c_disband=16, c_plunder=15,
        atk=1, dfn=6, tactics=1.08, guerrilla=0.5,
        recruit=0.95, recruit_other=0.36, manpower=0.65,
        reform=0, election=30, support_chg=0.40, support_inc=1.28,
        age=3, revolutionary=False, colors=(40, 120, 160),
        attrs=dict(DEMOCRACY=3, CENTRALIZATION=2, RELIGIOUSNESS=2, SOCIALIZATION=2, COMMUNISM=1, NATIONALISM=2, MONARCHY_TRADITION=1, MILITARISM=2),
        distinctive=True,
    ),
    # City-state: tiny cheap admin, walls, cannot project control far.
    "city_state": _arch(
        tax_ok=0.56, goods=0.16, invest=0.18, research=1.00,
        inc_tax=0.98, inc_prod=1.10, pop=0.014, eco=0.030,
        mil_up=1.06, adm=0.78, adm_dist=0.85, adm_cap=0.30,
        commerce=1.20, diplo=1.16, control=0.78,
        instability=0.13, assimilate=0.70, move=1.05,
        c_move=8, c_same=4, c_own=4, c_recruit=22, c_disband=15, c_plunder=14,
        atk=2, dfn=8, tactics=1.06, guerrilla=1.0,
        recruit=1.00, recruit_other=0.42, manpower=0.75,
        reform=0, election=25, support_chg=0.45, support_inc=1.30,
        age=1, revolutionary=False, colors=(50, 130, 170),
        attrs=dict(DEMOCRACY=4, CENTRALIZATION=2, RELIGIOUSNESS=2, SOCIALIZATION=2, COMMUNISM=1, NATIONALISM=2, MONARCHY_TRADITION=1, MILITARISM=2),
        high_autonomy=True, distinctive=True,
    ),
    # Directory / collegial (Swiss Federal Council): shared executive → stability, slower war.
    "directory": _arch(
        tax_ok=0.60, goods=0.18, invest=0.19, research=1.00,
        inc_tax=1.01, inc_prod=1.04, pop=0.015, eco=0.028,
        mil_up=1.08, adm=1.10, adm_dist=1.04, adm_cap=0.55,
        commerce=1.10, diplo=1.14, control=1.00,
        instability=0.12, assimilate=0.82, move=1.00,
        c_move=10, c_same=5, c_own=5, c_recruit=22, c_disband=16, c_plunder=15,
        atk=0, dfn=5, tactics=1.04, guerrilla=0.85,
        recruit=1.05, recruit_other=0.38, manpower=0.9,
        reform=0, election=40, support_chg=0.38, support_inc=1.25,
        age=5, revolutionary=False, colors=(80, 120, 90),
        attrs=dict(DEMOCRACY=4, CENTRALIZATION=3, RELIGIOUSNESS=2, SOCIALIZATION=2, COMMUNISM=1, NATIONALISM=2, MONARCHY_TRADITION=1, MILITARISM=2),
    ),
    # Tribal chiefdom: low surplus, kin guerrilla, collapses over distance.
    "tribal": _arch(
        tax_ok=0.32, goods=0.08, invest=0.06, research=1.32,
        inc_tax=0.86, inc_prod=0.88, pop=0.010, eco=0.004,
        mil_up=0.92, adm=0.75, adm_dist=1.50, adm_cap=0.85,
        commerce=0.65, diplo=0.65, control=0.55,
        instability=0.24, assimilate=0.45, move=1.10,
        c_move=7, c_same=3, c_own=3, c_recruit=15, c_disband=9, c_plunder=7,
        atk=3, dfn=4, tactics=0.82, guerrilla=2.9,
        recruit=1.18, recruit_other=0.55, manpower=0.85,
        reform=0, election=0, support_chg=0.52, support_inc=1.08,
        age=0, revolutionary=False, colors=(90, 70, 40),
        attrs=dict(DEMOCRACY=1, CENTRALIZATION=1, RELIGIOUSNESS=3, SOCIALIZATION=1, COMMUNISM=1, NATIONALISM=1, MONARCHY_TRADITION=1, MILITARISM=3),
        high_autonomy=True,
    ),
    # Steppe horde: conquest surplus, plunder cheap, sedentary production weak, succession crises.
    "horde": _arch(
        tax_ok=0.35, goods=0.08, invest=0.06, research=1.28,
        inc_tax=0.90, inc_prod=0.86, pop=0.004, eco=0.004,
        mil_up=0.98, adm=0.82, adm_dist=1.55, adm_cap=0.88,
        commerce=0.72, diplo=0.70, control=0.62,
        instability=0.28, assimilate=0.52, move=1.15,
        c_move=6, c_same=3, c_own=3, c_recruit=14, c_disband=8, c_plunder=5,
        atk=6, dfn=2, tactics=1.02, guerrilla=2.1,
        recruit=1.28, recruit_other=0.50, manpower=1.05,
        reform=0, election=0, support_chg=0.48, support_inc=1.15,
        age=2, revolutionary=False, colors=(110, 90, 50),
        attrs=dict(DEMOCRACY=1, CENTRALIZATION=2, RELIGIOUSNESS=2, SOCIALIZATION=1, COMMUNISM=1, NATIONALISM=2, MONARCHY_TRADITION=2, MILITARISM=5),
    ),
    # ML single-party: forced industrialization + mass conscription; soft-budget NOT free —
    # high admin/military cost (command economy waste); weak commerce (BUG-002 safe).
    "ml_single_party": _arch(
        tax_ok=0.68, goods=0.18, invest=0.22, research=1.04,
        inc_tax=1.08, inc_prod=1.04, pop=0.022, eco=0.022,
        mil_up=1.18, adm=1.22, adm_dist=1.06, adm_cap=0.52,
        commerce=0.88, diplo=0.90, control=1.18,
        instability=0.17, assimilate=1.08, move=1.00,
        c_move=10, c_same=5, c_own=5, c_recruit=19, c_disband=13, c_plunder=13,
        atk=2, dfn=5, tactics=1.08, guerrilla=1.0,
        recruit=1.20, recruit_other=0.46, manpower=1.55,
        reform=0, election=0, support_chg=0.34, support_inc=1.28,
        age=7, revolutionary=False, colors=(160, 25, 25),
        attrs=dict(DEMOCRACY=1, CENTRALIZATION=5, RELIGIOUSNESS=1, SOCIALIZATION=5, COMMUNISM=5, NATIONALISM=3, MONARCHY_TRADITION=1, MILITARISM=4),
        cant_change_vassal_gov=True,
    ),
    # People's democracy (satellite): softer copy — less autonomy, slightly weaker industry.
    "peoples_democracy": _arch(
        tax_ok=0.64, goods=0.18, invest=0.20, research=1.06,
        inc_tax=1.06, inc_prod=1.01, pop=0.020, eco=0.018,
        mil_up=1.16, adm=1.18, adm_dist=1.08, adm_cap=0.55,
        commerce=0.92, diplo=0.88, control=1.12,
        instability=0.18, assimilate=1.00, move=1.00,
        c_move=10, c_same=5, c_own=5, c_recruit=20, c_disband=14, c_plunder=13,
        atk=2, dfn=4, tactics=1.05, guerrilla=0.95,
        recruit=1.16, recruit_other=0.42, manpower=1.35,
        reform=0, election=0, support_chg=0.36, support_inc=1.25,
        age=8, revolutionary=False, colors=(150, 40, 40),
        attrs=dict(DEMOCRACY=2, CENTRALIZATION=4, RELIGIOUSNESS=1, SOCIALIZATION=4, COMMUNISM=4, NATIONALISM=3, MONARCHY_TRADITION=1, MILITARISM=3),
    ),
    # Workers' self-management (Yugoslavia): market-socialist flexibility + ethnic/enterprise instability.
    "workers_self_management": _arch(
        tax_ok=0.60, goods=0.18, invest=0.20, research=1.00,
        inc_tax=0.98, inc_prod=1.06, pop=0.018, eco=0.030,
        mil_up=1.10, adm=1.12, adm_dist=1.08, adm_cap=0.58,
        commerce=1.08, diplo=1.05, control=0.95,
        instability=0.22, assimilate=0.80, move=1.00,
        c_move=10, c_same=5, c_own=5, c_recruit=21, c_disband=15, c_plunder=14,
        atk=1, dfn=5, tactics=1.04, guerrilla=1.7,
        recruit=1.12, recruit_other=0.45, manpower=1.15,
        reform=0, election=40, support_chg=0.48, support_inc=1.28,
        age=8, revolutionary=False, colors=(170, 60, 50),
        attrs=dict(DEMOCRACY=3, CENTRALIZATION=2, RELIGIOUSNESS=1, SOCIALIZATION=5, COMMUNISM=4, NATIONALISM=2, MONARCHY_TRADITION=1, MILITARISM=3),
        high_autonomy=True,
    ),
    # Fascist dictatorship: short-run militarized production, attack bias, racial exclusion ↓ assimilate.
    "fascist_dictatorship": _arch(
        tax_ok=0.55, goods=0.15, invest=0.17, research=1.02,
        inc_tax=1.06, inc_prod=1.06, pop=0.014, eco=0.022,
        mil_up=1.28, adm=1.10, adm_dist=1.06, adm_cap=0.48,
        commerce=0.98, diplo=0.88, control=1.18,
        instability=0.18, assimilate=0.72, move=1.05,
        c_move=9, c_same=5, c_own=5, c_recruit=19, c_disband=13, c_plunder=11,
        atk=5, dfn=3, tactics=1.16, guerrilla=0.75,
        recruit=1.22, recruit_other=0.32, manpower=1.45,
        reform=0, election=0, support_chg=0.36, support_inc=1.38,
        age=7, revolutionary=False, colors=(60, 60, 60),
        attrs=dict(DEMOCRACY=1, CENTRALIZATION=5, RELIGIOUSNESS=2, SOCIALIZATION=2, COMMUNISM=1, NATIONALISM=5, MONARCHY_TRADITION=1, MILITARISM=5),
    ),
    # Totalitarianism (Arendt/Friedrich): atomizing terror → control↑ guerrilla↓; huge standing forces.
    "totalitarianism": _arch(
        tax_ok=0.58, goods=0.15, invest=0.16, research=1.00,
        inc_tax=1.10, inc_prod=1.05, pop=0.012, eco=0.018,
        mil_up=1.32, adm=1.18, adm_dist=1.02, adm_cap=0.40,
        commerce=0.90, diplo=0.82, control=1.25,
        instability=0.14, assimilate=0.70, move=1.06,
        c_move=9, c_same=5, c_own=5, c_recruit=18, c_disband=12, c_plunder=10,
        atk=5, dfn=3, tactics=1.18, guerrilla=0.55,
        recruit=1.25, recruit_other=0.30, manpower=1.55,
        reform=0, election=0, support_chg=0.34, support_inc=1.42,
        age=8, revolutionary=False, colors=(30, 30, 30),
        attrs=dict(DEMOCRACY=1, CENTRALIZATION=5, RELIGIOUSNESS=1, SOCIALIZATION=1, COMMUNISM=2, NATIONALISM=5, MONARCHY_TRADITION=1, MILITARISM=5),
        cant_change_vassal_gov=True,
    ),
    # Generic authoritarianism: extractive without fascist mobilization premium.
    "authoritarianism": _arch(
        tax_ok=0.50, goods=0.14, invest=0.14, research=1.10,
        inc_tax=1.06, inc_prod=0.98, pop=0.014, eco=0.012,
        mil_up=1.20, adm=1.14, adm_dist=1.14, adm_cap=0.50,
        commerce=0.92, diplo=0.92, control=1.12,
        instability=0.21, assimilate=0.88, move=1.00,
        c_move=10, c_same=5, c_own=5, c_recruit=21, c_disband=15, c_plunder=13,
        atk=2, dfn=4, tactics=1.04, guerrilla=1.05,
        recruit=1.10, recruit_other=0.34, manpower=1.1,
        reform=0, election=0, support_chg=0.40, support_inc=1.18,
        age=6, revolutionary=False, colors=(90, 50, 50),
        attrs=dict(DEMOCRACY=1, CENTRALIZATION=4, RELIGIOUSNESS=2, SOCIALIZATION=1, COMMUNISM=1, NATIONALISM=3, MONARCHY_TRADITION=2, MILITARISM=4),
    ),
    # Sultanism (Weber/Linz): neo-patrimonial predation — tax↑ institutions↓ instability↑.
    "sultanism": _arch(
        tax_ok=0.38, goods=0.12, invest=0.10, research=1.22,
        inc_tax=1.14, inc_prod=0.88, pop=0.008, eco=0.006,
        mil_up=1.22, adm=1.30, adm_dist=1.30, adm_cap=0.32,
        commerce=0.82, diplo=0.82, control=0.95,
        instability=0.34, assimilate=0.70, move=0.96,
        c_move=11, c_same=6, c_own=5, c_recruit=22, c_disband=15, c_plunder=12,
        atk=1, dfn=3, tactics=0.96, guerrilla=1.5,
        recruit=1.02, recruit_other=0.28, manpower=0.85,
        reform=0, election=0, support_chg=0.55, support_inc=1.08,
        age=4, revolutionary=False, colors=(110, 70, 40),
        attrs=dict(DEMOCRACY=1, CENTRALIZATION=4, RELIGIOUSNESS=3, SOCIALIZATION=1, COMMUNISM=1, NATIONALISM=2, MONARCHY_TRADITION=4, MILITARISM=3),
    ),
    # Hegemonic party (PRI/UMNO ideal-type): electoral authoritarian — some market, managed stability.
    "hegemonic_party": _arch(
        tax_ok=0.54, goods=0.16, invest=0.18, research=1.04,
        inc_tax=1.04, inc_prod=1.05, pop=0.020, eco=0.028,
        mil_up=1.12, adm=1.08, adm_dist=1.06, adm_cap=0.50,
        commerce=1.06, diplo=1.00, control=1.10,
        instability=0.15, assimilate=0.95, move=1.00,
        c_move=10, c_same=5, c_own=5, c_recruit=21, c_disband=15, c_plunder=14,
        atk=2, dfn=4, tactics=1.08, guerrilla=0.85,
        recruit=1.12, recruit_other=0.38, manpower=1.2,
        reform=0, election=0, support_chg=0.36, support_inc=1.28,
        age=7, revolutionary=False, colors=(70, 90, 50),
        attrs=dict(DEMOCRACY=2, CENTRALIZATION=4, RELIGIOUSNESS=2, SOCIALIZATION=2, COMMUNISM=2, NATIONALISM=4, MONARCHY_TRADITION=1, MILITARISM=3),
    ),
    # Corporatist state (Salazar/Mussolini corporatism): organized capital–labor, medium militarism.
    "corporatist_state": _arch(
        tax_ok=0.54, goods=0.16, invest=0.18, research=1.04,
        inc_tax=1.04, inc_prod=1.06, pop=0.014, eco=0.025,
        mil_up=1.18, adm=1.12, adm_dist=1.06, adm_cap=0.50,
        commerce=1.04, diplo=0.98, control=1.14,
        instability=0.14, assimilate=0.88, move=1.02,
        c_move=10, c_same=5, c_own=5, c_recruit=20, c_disband=14, c_plunder=13,
        atk=3, dfn=4, tactics=1.12, guerrilla=0.75,
        recruit=1.14, recruit_other=0.34, manpower=1.25,
        reform=0, election=0, support_chg=0.32, support_inc=1.26,
        age=7, revolutionary=False, colors=(80, 80, 90),
        attrs=dict(DEMOCRACY=1, CENTRALIZATION=4, RELIGIOUSNESS=3, SOCIALIZATION=2, COMMUNISM=1, NATIONALISM=4, MONARCHY_TRADITION=2, MILITARISM=4),
    ),
    # Junta: praetorian politics — army first, economy/legitimacy last.
    "junta": _arch(
        tax_ok=0.46, goods=0.13, invest=0.12, research=1.14,
        inc_tax=1.02, inc_prod=0.94, pop=0.008, eco=0.008,
        mil_up=1.35, adm=1.18, adm_dist=1.14, adm_cap=0.55,
        commerce=0.85, diplo=0.78, control=1.12,
        instability=0.26, assimilate=0.82, move=1.06,
        c_move=9, c_same=5, c_own=5, c_recruit=17, c_disband=11, c_plunder=10,
        atk=4, dfn=5, tactics=1.12, guerrilla=1.05,
        recruit=1.26, recruit_other=0.40, manpower=1.55,
        reform=0, election=0, support_chg=0.42, support_inc=1.18,
        age=7, revolutionary=False, colors=(50, 70, 50),
        attrs=dict(DEMOCRACY=1, CENTRALIZATION=4, RELIGIOUSNESS=2, SOCIALIZATION=1, COMMUNISM=1, NATIONALISM=4, MONARCHY_TRADITION=1, MILITARISM=5),
    ),
    # Military clique (Showa gunbu): high tactics/attack, war economy, civilian politics hollow.
    "military_clique": _arch(
        tax_ok=0.50, goods=0.14, invest=0.16, research=1.02,
        inc_tax=1.02, inc_prod=1.04, pop=0.012, eco=0.020,
        mil_up=1.30, adm=1.10, adm_dist=1.06, adm_cap=0.48,
        commerce=0.95, diplo=0.85, control=1.14,
        instability=0.19, assimilate=0.92, move=1.08,
        c_move=8, c_same=4, c_own=5, c_recruit=18, c_disband=12, c_plunder=10,
        atk=5, dfn=3, tactics=1.22, guerrilla=0.65,
        recruit=1.22, recruit_other=0.34, manpower=1.5,
        reform=0, election=0, support_chg=0.34, support_inc=1.28,
        age=6, revolutionary=False, colors=(80, 60, 40),
        attrs=dict(DEMOCRACY=1, CENTRALIZATION=4, RELIGIOUSNESS=2, SOCIALIZATION=1, COMMUNISM=1, NATIONALISM=5, MONARCHY_TRADITION=3, MILITARISM=5),
    ),
    # Personalist dictatorship: loyalty > institutions; predatory; succession fragility.
    "personalist": _arch(
        tax_ok=0.42, goods=0.12, invest=0.10, research=1.18,
        inc_tax=1.08, inc_prod=0.90, pop=0.008, eco=0.006,
        mil_up=1.24, adm=1.25, adm_dist=1.25, adm_cap=0.35,
        commerce=0.85, diplo=0.85, control=1.02,
        instability=0.32, assimilate=0.75, move=1.00,
        c_move=10, c_same=5, c_own=5, c_recruit=21, c_disband=15, c_plunder=12,
        atk=2, dfn=3, tactics=0.98, guerrilla=1.3,
        recruit=1.06, recruit_other=0.30, manpower=0.95,
        reform=0, election=0, support_chg=0.50, support_inc=1.12,
        age=6, revolutionary=False, colors=(100, 40, 40),
        attrs=dict(DEMOCRACY=1, CENTRALIZATION=4, RELIGIOUSNESS=2, SOCIALIZATION=1, COMMUNISM=1, NATIONALISM=3, MONARCHY_TRADITION=2, MILITARISM=4),
    ),
    # Developmental state (Johnson): high investment/export discipline, tech catch-up, medium coercion.
    "developmental_state": _arch(
        tax_ok=0.56, goods=0.16, invest=0.24, research=0.95,
        inc_tax=1.06, inc_prod=1.15, pop=0.018, eco=0.050,
        mil_up=1.14, adm=1.04, adm_dist=1.02, adm_cap=0.45,
        commerce=1.18, diplo=1.04, control=1.14,
        instability=0.12, assimilate=1.02, move=1.02,
        c_move=10, c_same=5, c_own=5, c_recruit=21, c_disband=15, c_plunder=14,
        atk=2, dfn=4, tactics=1.12, guerrilla=0.7,
        recruit=1.14, recruit_other=0.36, manpower=1.2,
        reform=0, election=0, support_chg=0.32, support_inc=1.32,
        age=8, revolutionary=False, colors=(40, 90, 120),
        attrs=dict(DEMOCRACY=2, CENTRALIZATION=5, RELIGIOUSNESS=2, SOCIALIZATION=2, COMMUNISM=1, NATIONALISM=4, MONARCHY_TRADITION=1, MILITARISM=3),
        distinctive=True,
    ),
    # Political tutelage (Sun Yat-sen): party-state nation-building, transitional authoritarian.
    "political_tutelage": _arch(
        tax_ok=0.54, goods=0.15, invest=0.18, research=1.04,
        inc_tax=1.04, inc_prod=1.02, pop=0.020, eco=0.025,
        mil_up=1.16, adm=1.12, adm_dist=1.10, adm_cap=0.52,
        commerce=0.98, diplo=0.98, control=1.12,
        instability=0.20, assimilate=1.05, move=1.00,
        c_move=10, c_same=5, c_own=5, c_recruit=20, c_disband=14, c_plunder=13,
        atk=2, dfn=4, tactics=1.08, guerrilla=1.05,
        recruit=1.14, recruit_other=0.40, manpower=1.25,
        reform=0, election=0, support_chg=0.42, support_inc=1.28,
        age=7, revolutionary=False, colors=(30, 80, 50),
        attrs=dict(DEMOCRACY=2, CENTRALIZATION=4, RELIGIOUSNESS=2, SOCIALIZATION=2, COMMUNISM=1, NATIONALISM=5, MONARCHY_TRADITION=1, MILITARISM=4),
    ),
    # Kemalist republic: secular modernization + military guardianship + nation assimilate.
    "kemalist": _arch(
        tax_ok=0.56, goods=0.16, invest=0.19, research=0.97,
        inc_tax=1.04, inc_prod=1.05, pop=0.020, eco=0.032,
        mil_up=1.16, adm=1.06, adm_dist=1.04, adm_cap=0.48,
        commerce=1.04, diplo=1.05, control=1.12,
        instability=0.15, assimilate=1.14, move=1.02,
        c_move=10, c_same=5, c_own=5, c_recruit=20, c_disband=14, c_plunder=13,
        atk=2, dfn=4, tactics=1.12, guerrilla=0.95,
        recruit=1.16, recruit_other=0.40, manpower=1.35,
        reform=0, election=45, support_chg=0.40, support_inc=1.32,
        age=7, revolutionary=False, colors=(220, 220, 220),
        attrs=dict(DEMOCRACY=3, CENTRALIZATION=4, RELIGIOUSNESS=1, SOCIALIZATION=2, COMMUNISM=1, NATIONALISM=5, MONARCHY_TRADITION=1, MILITARISM=4),
    ),
    # Nasserist Arab socialism: populist redistribution, military-nationalism, middling industry.
    "nasserist": _arch(
        tax_ok=0.58, goods=0.17, invest=0.18, research=1.06,
        inc_tax=1.04, inc_prod=1.00, pop=0.026, eco=0.018,
        mil_up=1.18, adm=1.14, adm_dist=1.12, adm_cap=0.55,
        commerce=0.92, diplo=1.04, control=1.10,
        instability=0.20, assimilate=1.00, move=1.02,
        c_move=10, c_same=5, c_own=5, c_recruit=20, c_disband=14, c_plunder=13,
        atk=3, dfn=3, tactics=1.06, guerrilla=1.25,
        recruit=1.16, recruit_other=0.42, manpower=1.35,
        reform=0, election=0, support_chg=0.42, support_inc=1.32,
        age=8, revolutionary=False, colors=(50, 140, 70),
        attrs=dict(DEMOCRACY=2, CENTRALIZATION=4, RELIGIOUSNESS=2, SOCIALIZATION=3, COMMUNISM=3, NATIONALISM=5, MONARCHY_TRADITION=1, MILITARISM=4),
    ),
    # National Convention (1792–94): revolutionary mobilization, terror instability, mass levy.
    "national_convention": _arch(
        tax_ok=0.52, goods=0.15, invest=0.14, research=1.06,
        inc_tax=1.02, inc_prod=0.96, pop=0.010, eco=0.012,
        mil_up=1.22, adm=1.18, adm_dist=1.18, adm_cap=0.62,
        commerce=0.92, diplo=0.90, control=1.05,
        instability=0.34, assimilate=0.95, move=1.04,
        c_move=10, c_same=5, c_own=5, c_recruit=17, c_disband=12, c_plunder=10,
        atk=4, dfn=3, tactics=1.06, guerrilla=1.6,
        recruit=1.28, recruit_other=0.52, manpower=1.6,
        reform=1, election=15, support_chg=0.62, support_inc=1.42,
        age=5, revolutionary=True, colors=(50, 50, 160),
        attrs=dict(DEMOCRACY=4, CENTRALIZATION=4, RELIGIOUSNESS=1, SOCIALIZATION=3, COMMUNISM=2, NATIONALISM=5, MONARCHY_TRADITION=1, MILITARISM=4),
    ),
    # Revolutionary regime: transitional party-army; high instability until institutionalize.
    "revolutionary_regime": _arch(
        tax_ok=0.54, goods=0.16, invest=0.15, research=1.10,
        inc_tax=1.02, inc_prod=0.96, pop=0.014, eco=0.012,
        mil_up=1.20, adm=1.16, adm_dist=1.14, adm_cap=0.60,
        commerce=0.88, diplo=0.88, control=1.06,
        instability=0.30, assimilate=0.95, move=1.04,
        c_move=10, c_same=5, c_own=5, c_recruit=18, c_disband=12, c_plunder=11,
        atk=3, dfn=3, tactics=1.04, guerrilla=1.7,
        recruit=1.22, recruit_other=0.48, manpower=1.45,
        reform=1, election=0, support_chg=0.55, support_inc=1.36,
        age=6, revolutionary=True, colors=(180, 40, 40),
        attrs=dict(DEMOCRACY=2, CENTRALIZATION=4, RELIGIOUSNESS=1, SOCIALIZATION=3, COMMUNISM=3, NATIONALISM=4, MONARCHY_TRADITION=1, MILITARISM=4),
    ),
    # Communitarian autonomy placeholder kept out of slots; if referenced, mild social-dem profile.
    "communitarian_autonomy": _arch(
        tax_ok=0.58, goods=0.18, invest=0.18, research=1.04,
        inc_tax=0.98, inc_prod=1.02, pop=0.015, eco=0.020,
        mil_up=1.05, adm=1.06, adm_dist=1.10, adm_cap=0.58,
        commerce=1.00, diplo=1.00, control=0.94,
        instability=0.16, assimilate=0.82, move=1.00,
        c_move=10, c_same=5, c_own=5, c_recruit=21, c_disband=15, c_plunder=14,
        atk=0, dfn=4, tactics=1.00, guerrilla=1.2,
        recruit=1.08, recruit_other=0.42, manpower=1.0,
        reform=0, election=35, support_chg=0.45, support_inc=1.25,
        age=6, revolutionary=False, colors=(80, 140, 80),
        attrs=dict(DEMOCRACY=3, CENTRALIZATION=2, RELIGIOUSNESS=2, SOCIALIZATION=4, COMMUNISM=2, NATIONALISM=2, MONARCHY_TRADITION=1, MILITARISM=2),
        high_autonomy=True,
    ),
    # Colonial government: metropole extraction (tax↑ goods↓), weak local diplo, high unrest.
    "colonial": _arch(
        tax_ok=0.36, goods=0.12, invest=0.10, research=1.20,
        inc_tax=1.16, inc_prod=0.88, pop=0.008, eco=0.010,
        mil_up=1.22, adm=1.28, adm_dist=1.35, adm_cap=0.68,
        commerce=1.12, diplo=0.72, control=0.82,
        instability=0.30, assimilate=0.48, move=1.00,
        c_move=11, c_same=6, c_own=5, c_recruit=24, c_disband=16, c_plunder=11,
        atk=1, dfn=3, tactics=1.04, guerrilla=0.55,
        recruit=0.95, recruit_other=0.48, manpower=0.65,
        reform=0, election=0, support_chg=0.42, support_inc=1.02,
        age=5, revolutionary=False, colors=(80, 80, 120),
        attrs=dict(DEMOCRACY=2, CENTRALIZATION=3, RELIGIOUSNESS=2, SOCIALIZATION=1, COMMUNISM=1, NATIONALISM=2, MONARCHY_TRADITION=3, MILITARISM=3),
        high_autonomy=True,
    ),
    # Dominion: near-metropolitan democracy with imperial diplo tether.
    "dominion": _arch(
        tax_ok=0.58, goods=0.17, invest=0.20, research=0.99,
        inc_tax=1.02, inc_prod=1.05, pop=0.022, eco=0.035,
        mil_up=1.10, adm=1.04, adm_dist=1.08, adm_cap=0.52,
        commerce=1.14, diplo=1.18, control=1.00,
        instability=0.11, assimilate=0.84, move=1.00,
        c_move=10, c_same=5, c_own=6, c_recruit=22, c_disband=17, c_plunder=16,
        atk=0, dfn=4, tactics=1.10, guerrilla=0.75,
        recruit=1.08, recruit_other=0.40, manpower=1.0,
        reform=0, election=50, support_chg=0.42, support_inc=1.30,
        age=6, revolutionary=False, colors=(100, 40, 40),
        attrs=dict(DEMOCRACY=4, CENTRALIZATION=3, RELIGIOUSNESS=2, SOCIALIZATION=2, COMMUNISM=1, NATIONALISM=3, MONARCHY_TRADITION=4, MILITARISM=2),
        high_autonomy=True,
    ),
    # Provisional: caretaker — weak revenue, high volatility, short horizon.
    "provisional": _arch(
        tax_ok=0.45, goods=0.14, invest=0.12, research=1.14,
        inc_tax=0.92, inc_prod=0.92, pop=0.008, eco=0.008,
        mil_up=1.16, adm=1.25, adm_dist=1.22, adm_cap=0.68,
        commerce=0.88, diplo=0.95, control=0.85,
        instability=0.36, assimilate=0.75, move=1.00,
        c_move=10, c_same=5, c_own=5, c_recruit=22, c_disband=15, c_plunder=14,
        atk=1, dfn=3, tactics=0.98, guerrilla=1.25,
        recruit=1.05, recruit_other=0.40, manpower=1.0,
        reform=2, election=20, support_chg=0.68, support_inc=1.08,
        age=5, revolutionary=False, colors=(140, 140, 140),
        attrs=dict(DEMOCRACY=3, CENTRALIZATION=2, RELIGIOUSNESS=2, SOCIALIZATION=2, COMMUNISM=1, NATIONALISM=2, MONARCHY_TRADITION=1, MILITARISM=2),
    ),
    # Warlordism: fragmented coercion markets; plunder; no public goods.
    "warlord": _arch(
        tax_ok=0.34, goods=0.10, invest=0.08, research=1.30,
        inc_tax=0.94, inc_prod=0.86, pop=0.004, eco=0.002,
        mil_up=1.35, adm=1.32, adm_dist=1.45, adm_cap=0.72,
        commerce=0.70, diplo=0.65, control=0.65,
        instability=0.38, assimilate=0.55, move=1.10,
        c_move=7, c_same=3, c_own=4, c_recruit=16, c_disband=9, c_plunder=6,
        atk=4, dfn=2, tactics=0.92, guerrilla=2.6,
        recruit=1.28, recruit_other=0.50, manpower=1.25,
        reform=0, election=0, support_chg=0.58, support_inc=1.02,
        age=6, revolutionary=False, colors=(100, 80, 40),
        attrs=dict(DEMOCRACY=1, CENTRALIZATION=1, RELIGIOUSNESS=2, SOCIALIZATION=1, COMMUNISM=1, NATIONALISM=2, MONARCHY_TRADITION=1, MILITARISM=5),
        high_autonomy=True, vassal_war=True,
    ),
    # Rebels: max irregular war, min fiscal state.
    "rebels": _arch(
        tax_ok=0.28, goods=0.08, invest=0.05, research=1.35,
        inc_tax=0.85, inc_prod=0.85, pop=0.004, eco=0.0,
        mil_up=0.90, adm=0.70, adm_dist=1.45, adm_cap=0.92,
        commerce=0.65, diplo=0.55, control=0.55,
        instability=0.42, assimilate=0.38, move=1.12,
        c_move=6, c_same=3, c_own=3, c_recruit=14, c_disband=8, c_plunder=5,
        atk=3, dfn=6, tactics=0.88, guerrilla=3.0,
        recruit=1.30, recruit_other=0.55, manpower=1.05,
        reform=0, election=0, support_chg=0.65, support_inc=0.98,
        age=0, revolutionary=True, colors=(120, 20, 20),
        attrs=dict(DEMOCRACY=1, CENTRALIZATION=1, RELIGIOUSNESS=1, SOCIALIZATION=2, COMMUNISM=2, NATIONALISM=2, MONARCHY_TRADITION=1, MILITARISM=4),
    ),
}


# ---------------------------------------------------------------------------
# Late-game safety clamp (BUG-002 / BUG-004 prevention over 10k+ turns)
# Compounding INCOME_* / ECO_GROWTH must stay near 1.0; army & recruit floors
# prevent "treasury dead / can't raise army despite manpower" spirals.
# ---------------------------------------------------------------------------
_CLAMP = {
    "INCOME_PRODUCTION": (0.90, 1.12),
    "INCOME_TAXATION": (0.90, 1.12),
    "ECO_GROWTH_BONUS": (0.0, 0.040),
    "POP_GROWTH_BONUS": (0.0, 0.028),
    "MILITARY_UPKEEP": (0.95, 1.32),
    "ADMINISTRATION_COST": (0.80, 1.32),
    "ADMINISTRATION_COST_DISTANCE": (0.85, 1.45),
    "RESEARCH_COST": (0.96, 1.32),
    "RECRUITABILITY": (1.00, 1.28),
    "RECRUITABILITY_OTHER": (0.28, 0.52),
    "MANPOWER_BONUS": (0.70, 1.40),
    "ACCEPTABLE_TAXATION": (0.32, 0.68),
    "MIN_GOODS": (0.08, 0.20),
    "MIN_INVESTMENTS": (0.06, 0.22),
    "COMMERCE_RANGE": (0.70, 1.22),
    "DIPLOMACY_RANGE": (0.60, 1.22),
    "CONTROL_RANGE": (0.55, 1.22),
    "ASSIMILATE_RATE": (0.40, 1.28),
    "MOVEMENT_MODIFIER": (0.92, 1.14),
    "MILITARY_TACTICS": (0.85, 1.20),
    "INSTABILITY": (0.08, 0.38),
}


def harden(a: dict) -> dict:
    """Clamp archetype into long-run fiscal/recruit safety envelope."""
    out = dict(a)
    for k, (lo, hi) in _CLAMP.items():
        if k in out:
            out[k] = max(lo, min(hi, float(out[k])))
    # High-output regimes must still pay for army/admin (no free lunch / inflation spiral).
    if out["INCOME_PRODUCTION"] >= 1.08:
        out["MILITARY_UPKEEP"] = max(out["MILITARY_UPKEEP"], 1.10)
        out["ADMINISTRATION_COST"] = max(out["ADMINISTRATION_COST"], 0.92)
    if out["INCOME_PRODUCTION"] >= 1.10 or out["ECO_GROWTH_BONUS"] >= 0.035:
        out["MILITARY_UPKEEP"] = max(out["MILITARY_UPKEEP"], 1.12)
        out["ADMINISTRATION_COST"] = max(out["ADMINISTRATION_COST"], 0.95)
        out["MIN_INVESTMENTS"] = max(out["MIN_INVESTMENTS"], 0.14)
    # Recruitability floor: never lock out army creation from ideology alone.
    out["RECRUITABILITY"] = max(1.00, out["RECRUITABILITY"])
    out["COST_OF_RECRUIT"] = int(max(16, min(24, out["COST_OF_RECRUIT"])))
    out["COST_OF_DISBAND"] = int(max(10, min(18, out["COST_OF_DISBAND"])))
    # Extremely extractive tax without goods floor → late unrest + empty treasury feel.
    if out["INCOME_TAXATION"] >= 1.10:
        out["MIN_GOODS"] = max(out["MIN_GOODS"], 0.12)
        out["MILITARY_UPKEEP"] = max(out["MILITARY_UPKEEP"], 1.08)
    return out


ARCH = {k: harden(v) for k, v in ARCH.items()}


def fmt_num(v: float) -> str:
    """Emit Json numbers; keep a decimal for whole floats (libGDX float fields)."""
    if isinstance(v, bool):
        return "true" if v else "false"
    if isinstance(v, int) and not isinstance(v, bool):
        return str(v)
    fv = float(v)
    if fv.is_integer():
        return f"{int(fv)}.0"
    return f"{fv:.4f}".rstrip("0").rstrip(".")


def _bool(v: bool) -> str:
    return "true" if v else "false"


def emit_gov(name, tag, image, gid, ai, arch_key) -> str:
    a = ARCH[arch_key]
    attrs = a["attrs"]
    r, g, b = a["colors"]
    steps = {k: (1.5 if attrs[k] > 3 else 1.0) for k in attrs}
    lines = [
        "\t\t{",
        f'\t\t\tName: "{name}",',
        f'\t\t\tExtra_Tag: "{tag}",',
        f'\t\t\tImage: "{image}",',
        f"\t\t\tGOV_GROUP_ID: {gid},",
        "\t\t\tSTRONG_IDEOLOGY: true,",
        "\t\t\tPOLITICAL_AUTHORITY: 0,",
        "\t\t\tGREAT_POLITICAL_POWER: false,",
        "\t\t\tCHARACTERISTIC: 0,",
        "\t\t\tCHARACTERISTIC_EFFECTIVE: false,",
        "\t\t\tCIVILIZE_TECH_LEVEL: 1.1f,",
        "",
        f"\t\t\tDEMOCRACY_STEP: {fmt_num(steps['DEMOCRACY'])},",
        f"\t\t\tDEMOCRACY: {attrs['DEMOCRACY']},",
        f"\t\t\tCENTRALIZATION_STEP: {fmt_num(steps['CENTRALIZATION'])},",
        f"\t\t\tCENTRALIZATION: {attrs['CENTRALIZATION']},",
        f"\t\t\tRELIGIOUSNESS_STEP: {fmt_num(steps['RELIGIOUSNESS'])},",
        f"\t\t\tRELIGIOUSNESS: {attrs['RELIGIOUSNESS']},",
        f"\t\t\tSOCIALIZATION_STEP: {fmt_num(steps['SOCIALIZATION'])},",
        f"\t\t\tSOCIALIZATION: {attrs['SOCIALIZATION']},",
        f"\t\t\tCOMMUNISM_STEP: {fmt_num(steps['COMMUNISM'])},",
        f"\t\t\tCOMMUNISM: {attrs['COMMUNISM']},",
        f"\t\t\tNATIONALISM_STEP: {fmt_num(steps['NATIONALISM'])},",
        f"\t\t\tNATIONALISM: {attrs['NATIONALISM']},",
        f"\t\t\tMONARCHY_TRADITION_STEP: {fmt_num(steps['MONARCHY_TRADITION'])},",
        f"\t\t\tMONARCHY_TRADITION: {attrs['MONARCHY_TRADITION']},",
        f"\t\t\tMILITARISM_STEP: {fmt_num(steps['MILITARISM'])},",
        f"\t\t\tMILITARISM: {attrs['MILITARISM']},",
        "",
        f"\t\t\tSUPPORT_RATE_CHANGING: {fmt_num(a['SUPPORT_RATE_CHANGING'])},",
        f"\t\t\tSUPPORT_RATE_INCREASING: {fmt_num(a['SUPPORT_RATE_INCREASING'])},",
        "",
        f"\t\t\tREFORMAT_PERIOD: {a['REFORMAT_PERIOD']},",
        f"\t\t\tELECTION_PERIOD: {a['ELECTION_PERIOD']},",
        "",
    ]
    for key in [
        "ACCEPTABLE_TAXATION", "MIN_GOODS", "MIN_INVESTMENTS", "RESEARCH_COST",
        "INCOME_TAXATION", "INCOME_PRODUCTION", "POP_GROWTH_BONUS", "ECO_GROWTH_BONUS",
        "MILITARY_UPKEEP", "ADMINISTRATION_COST", "ADMINISTRATION_COST_DISTANCE",
        "ADMINISTRATION_COST_CAPITAL", "COMMERCE_RANGE", "DIPLOMACY_RANGE", "CONTROL_RANGE",
        "INSTABILITY", "ASSIMILATE_RATE", "MOVEMENT_MODIFIER",
    ]:
        lines.append(f"\t\t\t{key}: {fmt_num(a[key])},")
    lines.append("")
    for key in [
        "COST_OF_MOVE", "COST_OF_MOVE_TO_THE_SAME_PROV", "COST_OF_MOVE_OWN_PROV",
        "COST_OF_RECRUIT", "COST_OF_DISBAND", "COST_OF_PLUNDER",
        "ATTACK_BONUS", "DEFENSE_BONUS",
    ]:
        lines.append(f"\t\t\t{key}: {a[key]},")
    lines += [
        "",
        f"\t\t\tMILITARY_TACTICS: {fmt_num(a['MILITARY_TACTICS'])},",
        f"\t\t\tGURRILLA: {fmt_num(a['GURRILLA'])},",
        f"\t\t\tRECRUITABILITY: {fmt_num(a['RECRUITABILITY'])},",
        f"\t\t\tRECRUITABILITY_OTHER: {fmt_num(a['RECRUITABILITY_OTHER'])},",
        f"\t\t\tMANPOWER_BONUS: {fmt_num(a['MANPOWER_BONUS'])},",
        "",
        "\t\t\tCAN_BECOME_CIVILIZED: -1,",
        f"\t\t\tAVAILABLE_SINCE_AGE_ID: {a['age']},",
        "",
        f"\t\t\tREVOLUTIONARY: {_bool(a['revolutionary'])},",
        f"\t\t\tCANT_CHANGE_GOV_OF_VASSAL: {_bool(a['CANT_CHANGE_GOV_OF_VASSAL'])},",
        f"\t\t\tVASSAL_CAN_DECLARE_WAR: {_bool(a['VASSAL_CAN_DECLARE_WAR'])},",
        f"\t\t\tPRINCE_WILL_BE_VASSALIZED: {_bool(a['PRINCE_WILL_BE_VASSALIZED'])},",
        f"\t\t\tHIGH_AUTONOMY: {_bool(a['HIGH_AUTONOMY'])},",
        f"\t\t\tDISTINCTIVE: {_bool(a['DISTINCTIVE'])},",
        "",
        f'\t\t\tAI_TYPE: "{ai}",',
        "\t\t\tGREEDY: 100,",
        "",
        f"\t\t\tR: {r},",
        f"\t\t\tG: {g},",
        f"\t\t\tB: {b}",
        "\t\t}",
    ]
    return "\n".join(lines)


def validate_envelope():
    for key, a in ARCH.items():
        assert 0.96 <= a["RESEARCH_COST"] <= 1.32, (key, "RESEARCH_COST", a["RESEARCH_COST"])
        for f in ("INCOME_TAXATION", "INCOME_PRODUCTION"):
            assert 0.90 <= a[f] <= 1.12, (key, f, a[f])
        assert 0.95 <= a["MILITARY_UPKEEP"] <= 1.32, (key, a["MILITARY_UPKEEP"])
        assert 0.80 <= a["ADMINISTRATION_COST"] <= 1.32, (key, a["ADMINISTRATION_COST"])
        assert 1.00 <= a["RECRUITABILITY"] <= 1.28, (key, a["RECRUITABILITY"])
        assert 16 <= a["COST_OF_RECRUIT"] <= 24, (key, a["COST_OF_RECRUIT"])
        assert 0.70 <= a["MANPOWER_BONUS"] <= 1.40, (key, a["MANPOWER_BONUS"])
        assert 0.0 <= a["ECO_GROWTH_BONUS"] <= 0.040, (key, a["ECO_GROWTH_BONUS"])
        assert a["ATTACK_BONUS"] <= 6 and a["DEFENSE_BONUS"] <= 8, key
        assert a["ASSIMILATE_RATE"] <= 1.28, key
        assert 0.92 <= a["MOVEMENT_MODIFIER"] <= 1.14, (key, a["MOVEMENT_MODIFIER"])
        # BUG-002 / long-run: production boom must fund army+admin
        if a["INCOME_PRODUCTION"] >= 1.08:
            assert a["MILITARY_UPKEEP"] >= 1.10, key
            assert a["ADMINISTRATION_COST"] >= 0.92, key
        if a["INCOME_PRODUCTION"] >= 1.10 or a["ECO_GROWTH_BONUS"] >= 0.035:
            assert a["MILITARY_UPKEEP"] >= 1.12, key


def validate():
    names = [s[0] for s in SLOTS]
    tags = [s[1] for s in SLOTS]
    assert len(names) == len(set(names)), names
    assert len(tags) == len(set(tags)), tags
    banned = [
        "无产阶级专政", "苏维埃政权", "人民阵线", "布尔什维克一党制",
        "工人代表苏维埃", "复兴党", "计划经济体制", "福利国家", "社会民主主义政体",
    ]
    for b in banned:
        assert not any(b in n for n in names), b
    for *_, ai, arch in SLOTS:
        assert arch in ARCH, arch
        assert ai in {"DEMOCRACY", "COMMUNISM", "FASCISM", "HORDE", "UNCIVILIZED", "CITYSTATE", "REBELS"}
    validate_envelope()


def main():
    validate()
    body = "\n".join(emit_gov(*s) for s in SLOTS)
    text = "{\n\tGovernment: [\n" + body + "\n\t],\n\t\n\tAge_of_Civilizations: Governments\n}"
    OUT.write_text(text, encoding="utf-8", newline="\n")
    print(f"Wrote {len(SLOTS)} governments -> {OUT}")
    for i, (n, tag, *_) in enumerate(SLOTS):
        print(f"{i:02d} {n} [{tag}]")


if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] in {"-h", "--help"}:
        print(__doc__)
        print("Usage: python rebuild_governments.py")
        print(f"Writes {OUT}")
        raise SystemExit(0)
    main()
