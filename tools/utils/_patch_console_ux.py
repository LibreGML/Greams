# -*- coding: utf-8 -*-
from pathlib import Path
import re

engine = Path(r"C:/Users/17786/Mycode/AOE/tools/console_src/age/of/civilizations2/jakowski/lukasz/ConsoleEngine.java")
cmds = Path(r"C:/Users/17786/Mycode/AOE/tools/console_src/age/of/civilizations2/jakowski/lukasz/ConsoleCmds.java")


def replace_method(src, name, new_body):
    start = src.find("    private static void " + name + "(")
    if start < 0:
        raise SystemExit("method missing: " + name)
    nxt = src.find("\n    private static void ", start + 10)
    if nxt < 0:
        nxt = src.rfind("\n}")
    return src[:start] + new_body + src[nxt:]


# ---------- Engine help ----------
e = engine.read_text(encoding="utf-8")
old_help = """    public static void printHelp() {
        try {
            ConsoleOut.usage(\"命令  说明\");
            java.util.Iterator it = HELP.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry e = (Map.Entry) it.next();
                ConsoleOut.usage(e.getKey() + \"  \" + e.getValue());
            }
        } catch (Throwable t) {
            ConsoleOut.err(\"帮助失败\");
        }
    }"""

new_help = r"""    public static void printHelp() {
        printHelpTopic("");
    }

    public static void printHelpTopic(String topic) {
        try {
            String raw = topic == null ? "" : topic.trim();
            String t = raw.toLowerCase();
            if (raw.length() == 0 || "help".equals(t) || "h".equals(t) || "?".equals(t)
                    || "目录".equals(raw) || "menu".equals(t)) {
                ConsoleOut.usage("【用法】先点省份，再输入命令。单条说明：命令?");
                ConsoleOut.usage("【分类】h 军队 | h 资源 | h 外交 | h 国家 | h 地图 | h 宏");
                ConsoleOut.usage("【常用】set army 5000 | add army 10000 * | add money | boost | who");
                return;
            }
            if ("军队".equals(raw) || "army".equals(t) || "兵".equals(raw)) {
                ConsoleOut.usage("--- 军队 ---");
                ConsoleOut.usage("set army 数量        当前省设为这个人数");
                ConsoleOut.usage("set army 数量 *      己方全部陆省都设成这个人数");
                ConsoleOut.usage("add army             当前省 +10000");
                ConsoleOut.usage("add army 数量        当前省加上这个人数");
                ConsoleOut.usage("add army 数量 *      己方全部陆省各加这个人数");
                ConsoleOut.usage("fill army 数量       同 set army 数量 *");
                return;
            }
            if ("资源".equals(raw) || "res".equals(t) || "钱".equals(raw)) {
                ConsoleOut.usage("--- 资源（当前玩家国）---");
                ConsoleOut.usage("add money / move / diplo   各加一笔常用量");
                ConsoleOut.usage("set money/move/diplo/manpower 数量");
                ConsoleOut.usage("set tech 1-1000            科技（100显示为1.0）");
                ConsoleOut.usage("add pop / add eco          当前省人口或经济 +32500");
                ConsoleOut.usage("boost                      温和加强：钱、移动、外交、人力");
                return;
            }
            if ("外交".equals(raw) || "diplo".equals(t) || "战争".equals(raw)) {
                ConsoleOut.usage("--- 外交 ---");
                ConsoleOut.usage("war [A B]       宣战；无参=你 vs 当前省所属国");
                ConsoleOut.usage("peace [A B]     真正停战");
                ConsoleOut.usage("peace-msg A B   只发议和消息");
                ConsoleOut.usage("ally + A B / ally - A");
                ConsoleOut.usage("vassal + 宗主 附庸 / vassal - 附庸");
                ConsoleOut.usage("rel A B 数值    改关系；开战用 war");
                ConsoleOut.usage("scan war        列出交战国");
                return;
            }
            if ("国家".equals(raw) || "civ".equals(t) || "省".equals(raw)) {
                ConsoleOut.usage("--- 国家/省份 ---");
                ConsoleOut.usage("who / civ / prov / id / ls");
                ConsoleOut.usage("play            当前省所属国加入玩家");
                ConsoleOut.usage("own / own annex 占领或吞并当前省");
                ConsoleOut.usage("core + / core - 当前省核心");
                ConsoleOut.usage("set gov 政体    合法换政体（先 scan gov）");
                ConsoleOut.usage("set happy/risk  幸福或叛乱 0-100");
                ConsoleOut.usage("fort / port / tower");
                return;
            }
            if ("地图".equals(raw) || "map".equals(t) || "视野".equals(raw)) {
                ConsoleOut.usage("--- 地图 ---");
                ConsoleOut.usage("go / go #省 / go 国名");
                ConsoleOut.usage("zoom 数字 | fog 0/1/2 | discover");
                ConsoleOut.usage("ids on|off | watch | date");
                return;
            }
            if ("宏".equals(raw) || "macro".equals(t) || "脚本".equals(raw)) {
                ConsoleOut.usage("--- 宏/工具 ---");
                ConsoleOut.usage("boost / god     加强（god 会给己方陆省加兵）");
                ConsoleOut.usage("run 名称        跑 assets/console/名称.txt");
                ConsoleOut.usage("sh a; b         一条里连跑多句");
                ConsoleOut.usage("hist / !! / fav / sug / cls / q");
                return;
            }
            Hit hit = match(split(t));
            if (hit != null) {
                ConsoleOut.usage(hit.name + "  " + helpOf(hit.name));
                return;
            }
            String unique = ConsoleSuggest.uniquePrefix(t, names());
            if (unique != null) {
                ConsoleOut.usage(unique + "  " + helpOf(unique));
                return;
            }
            ConsoleOut.usage("没有这个分类。试试：h 军队 / h 资源 / h 外交 / h 国家 / h 地图 / h 宏");
        } catch (Throwable ex) {
            ConsoleOut.err("帮助失败");
        }
    }"""

# Fix the old_help search - file uses Chinese quotes without escapes
old_help_plain = """    public static void printHelp() {
        try {
            ConsoleOut.usage("命令  说明");
            java.util.Iterator it = HELP.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry e = (Map.Entry) it.next();
                ConsoleOut.usage(e.getKey() + "  " + e.getValue());
            }
        } catch (Throwable t) {
            ConsoleOut.err("帮助失败");
        }
    }"""

if old_help_plain not in e:
    raise SystemExit("printHelp not found")
e = e.replace(old_help_plain, new_help, 1)
engine.write_text(e, encoding="utf-8")
print("engine ok")

# ---------- Cmds ----------
c = cmds.read_text(encoding="utf-8")

c = c.replace(
    """    static final long BOOST_MONEY = 999999999L;
    static final int BOOST_MOVE = 99999;
    static final int BOOST_DIPLO = 9999;
    static final int BOOST_MAN = 999999;
    static final int BOOST_TECH = 500;""",
    """    /** Mild boost inside normal tech-cap / turn economy. */
    static final long BOOST_MONEY_ADD = 313408L;
    static final int BOOST_TECH_FLOOR = 100;
    static final int BOOST_TECH_STEP = 25;
    static final int BOOST_TECH_CAP = 200;
    static final int BOOST_MAN_ADD = 25000;""",
)

# help topic dispatch
c = c.replace(
    '} else if ("h".equals(name) || "help".equals(name) || "?".equals(name)) {\n                ConsoleEngine.printHelp();',
    '} else if ("h".equals(name) || "help".equals(name) || "?".equals(name)) {\n                ConsoleEngine.printHelpTopic(ConsoleContext.join(args, 0));',
)

# register fill army if missing
if 'reg("fill army"' not in c:
    c = c.replace(
        'reg("set army",',
        'reg("fill army", "己方陆省统一设兵");\n            reg("set army",',
    )

if 'fillArmy(args)' not in c:
    c = c.replace(
        '} else if ("set army".equals(name)) {\n                setArmy(args);',
        '} else if ("set army".equals(name)) {\n                setArmy(args);\n            } else if ("fill army".equals(name)) {\n                fillArmy(args);',
    )

# shorten boost/god help lines if present
c = c.replace('reg("boost", "科技500、金钱、移动、外交、人力");', 'reg("boost", "温和加强资源");')
c = c.replace('reg("god", "boost 加上省份建设");', 'reg("god", "加强+己方陆省加兵");')
c = c.replace('reg("add army", "军队 +10000");', 'reg("add army", "加兵：add army [数量] [*]");')
c = c.replace('reg("set army", "把当前省军队设为指定值");', 'reg("set army", "设兵：set army 数量 [*]");')

add_army = r"""    private static void addArmyCmd(String[] args) {
        int amount = ARMY_ADD;
        boolean all = false;
        if (args != null && args.length > 0) {
            if (ConsoleContext.isStar(args[0])) {
                all = true;
            } else if (ConsoleContext.intOrNull(args[0]) != null) {
                amount = ConsoleContext.intOrNull(args[0]).intValue();
                if (args.length > 1 && ConsoleContext.isStar(args[1])) {
                    all = true;
                }
            } else {
                ConsoleOut.usage("add army [数量] [*]");
                return;
            }
        }
        if (amount < 0) {
            ConsoleOut.err("数量不能为负");
            return;
        }
        if (all) {
            batchArmy(amount, true);
            return;
        }
        int prov = ConsoleContext.requireActive();
        if (prov < 0) {
            return;
        }
        int delta = applyAddArmy(prov, amount);
        if (delta >= 0) {
            ConsoleOut.ok("军队 +" + delta);
        }
    }

"""

set_army = r"""    private static void setArmy(String[] args) {
        if (args == null || args.length == 0 || ConsoleContext.intOrNull(args[0]) == null) {
            ConsoleOut.usage("set army 数量 [*]");
            return;
        }
        int amount = ConsoleContext.intOrNull(args[0]).intValue();
        if (amount < 0) {
            ConsoleOut.err("数量不能为负");
            return;
        }
        boolean all = args.length > 1 && ConsoleContext.isStar(args[1]);
        if (all) {
            batchArmy(amount, false);
            return;
        }
        int prov = ConsoleContext.requireLand();
        if (prov < 0) {
            return;
        }
        if (applySetArmy(prov, amount)) {
            ConsoleOut.ok("军队 " + amount);
        }
    }

    private static void fillArmy(String[] args) {
        if (args == null || args.length == 0 || ConsoleContext.intOrNull(args[0]) == null) {
            ConsoleOut.usage("fill army 数量");
            return;
        }
        int amount = ConsoleContext.intOrNull(args[0]).intValue();
        if (amount < 0) {
            ConsoleOut.err("数量不能为负");
            return;
        }
        batchArmy(amount, false);
    }

    private static void batchArmy(int amount, boolean add) {
        int civ = ConsoleContext.playerCiv();
        if (civ <= 0) {
            ConsoleOut.err("没有玩家国家");
            return;
        }
        int[] list = ConsoleContext.ownLandProvinces(civ);
        if (list.length == 0) {
            ConsoleOut.err("没有己方陆省");
            return;
        }
        int okCount = 0;
        for (int i = 0; i < list.length; i++) {
            boolean done = add ? (applyAddArmy(list[i], amount) >= 0) : applySetArmy(list[i], amount);
            if (done) {
                okCount++;
            }
        }
        ConsoleContext.touchProvince(ConsoleContext.activeProvince());
        if (add) {
            ConsoleOut.ok("己方陆省 " + okCount + "/" + list.length + " 各 +" + amount);
        } else {
            ConsoleOut.ok("己方陆省 " + okCount + "/" + list.length + " 设为 " + amount);
        }
    }

    private static int applyAddArmy(int prov, int amount) {
        try {
            Province p = CFG.game.getProvince(prov);
            if (p == null) {
                return -1;
            }
            int slot = CFG.activeCivilizationArmyID;
            int who = p.getCivID(slot);
            int before = p.getArmy(slot);
            p.updateArmy(who, before + amount);
            return p.getArmy(slot) - before;
        } catch (Throwable t) {
            return -1;
        }
    }

    private static boolean applySetArmy(int prov, int amount) {
        try {
            Province p = CFG.game.getProvince(prov);
            if (p == null) {
                return false;
            }
            Civilization owner = CFG.game.getCiv(p.getCivID());
            if (owner != null) {
                owner.setNumOfUnits(owner.getNumOfUnits() - p.getArmy(0));
            }
            p.updateArmy(amount);
            if (owner != null) {
                owner.setNumOfUnits(owner.getNumOfUnits() + amount);
            }
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

"""

boost_m = r"""    private static void boost(String[] args, boolean echo) {
        int civ = (args == null || args.length == 0) ? ConsoleContext.playerCiv() : ConsoleContext.resolveCiv(ConsoleContext.join(args, 0));
        if (civ < 0) {
            return;
        }
        try {
            Civilization c = CFG.game.getCiv(civ);
            int tech = c.getTechnologyLevel_INT();
            if (tech < BOOST_TECH_FLOOR) {
                tech = BOOST_TECH_FLOOR;
            } else {
                tech = tech + BOOST_TECH_STEP;
            }
            if (tech > BOOST_TECH_CAP) {
                tech = BOOST_TECH_CAP;
            }
            c.setTechnologyLevel_INT(tech);

            c.setMoney(c.getMoney() + BOOST_MONEY_ADD);

            int cost = 10;
            try {
                Ideology ide = CFG.ideologiesManager.getIdeology(c.getIdeologyID());
                if (ide != null && ide.COST_OF_MOVE > 0) {
                    cost = ide.COST_OF_MOVE;
                }
            } catch (Throwable ignored) {
            }
            c.setMovePoints(c.getMovePoints() + cost * MOVE_TIMES);

            float techF = c.getTechnologyLevel();
            int cap = (int) (85f + techF * 85f / 4f);
            if (cap > 500) {
                cap = 500;
            }
            if (cap < 0) {
                cap = 0;
            }
            if (c.getDiplomacyPoints() < cap) {
                c.setDiplomacyPoints(cap);
            }

            try {
                c.setManPower(c.getManPower() + BOOST_MAN_ADD);
            } catch (Throwable ignored) {
            }
            ConsoleContext.top(civ);
            if (echo) {
                ConsoleOut.ok("加强 " + c.getCivName()
                        + " 科技" + c.getTechnologyLevel()
                        + " 钱" + c.getMoney()
                        + " 移动" + c.getMovePoints()
                        + " 外交" + c.getDiplomacyPoints()
                        + " 人力" + c.getManPower());
            }
        } catch (Throwable t) {
            ConsoleOut.err("加强失败");
        }
    }

"""

god_m = r"""    private static void god(String[] args) {
        int civ = (args == null || args.length == 0) ? ConsoleContext.playerCiv() : ConsoleContext.resolveCiv(ConsoleContext.join(args, 0));
        if (civ < 0) {
            return;
        }
        boost(args == null || args.length == 0 ? new String[0] : args, false);
        int[] list = ConsoleContext.ownLandProvinces(civ);
        int okCount = 0;
        for (int i = 0; i < list.length; i++) {
            if (applyAddArmy(list[i], ARMY_ADD) >= 0) {
                okCount++;
            }
        }
        int active = ConsoleContext.activeProvince();
        if (active >= 0 && ConsoleContext.isLand(active)) {
            try {
                Province p = CFG.game.getProvince(active);
                if (p != null && p.getCivID() == civ) {
                    if (p.getLevelOfFort() < 3) {
                        p.setLevelOfFort(3);
                    }
                    if (p.getLevelOfPort() >= 0) {
                        p.setLevelOfPort(1);
                    }
                    p.setLevelOfWatchTower(1);
                }
            } catch (Throwable ignored) {
            }
        }
        ConsoleContext.touchProvince(active);
        ConsoleOut.ok("神模式 " + CFG.game.getCiv(civ).getCivName() + " 已加强，陆省加兵 " + okCount);
    }

"""

c = replace_method(c, "addArmyCmd", add_army)
c = replace_method(c, "setArmy", set_army)
c = replace_method(c, "boost", boost_m)
c = replace_method(c, "god", god_m)

cmds.write_text(c, encoding="utf-8")
print("cmds ok")

# scripts
Path(r"C:/Users/17786/Mycode/AOE/AOE_unpacked/assets/console/boost.txt").write_text(
    "boost\n", encoding="utf-8"
)
Path(r"C:/Users/17786/Mycode/AOE/AOE_unpacked/assets/console/god.txt").write_text(
    "god\n", encoding="utf-8"
)
Path(r"C:/Users/17786/Mycode/AOE/AOE_unpacked/assets/console/fillarmy.txt").write_text(
    "fill army 10000\n", encoding="utf-8"
)
Path(r"C:/Users/17786/Mycode/AOE/AOE_unpacked/assets/console/warprep.txt").write_text(
    "boost\nfill army 10000\n", encoding="utf-8"
)
print("assets ok")
