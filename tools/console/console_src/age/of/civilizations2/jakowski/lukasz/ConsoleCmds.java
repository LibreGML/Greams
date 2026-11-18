package age.of.civilizations2.jakowski.lukasz;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/** All console commands. Registered names are the new command set. */
public final class ConsoleCmds {
    static final int POP_ADD = 32500;
    static final int ECO_ADD = 32500;
    static final int ARMY_ADD = 10000;
    static final long MONEY_ADD = 313408L;
    static final int DIPLO_ADD = 7905;
    static final int MOVE_TIMES = 50;
    static final int FORT_LEVEL = 7;
    /** Mild boost inside normal tech-cap / turn economy. */
    static final long BOOST_MONEY_ADD = 313408L;
    static final int BOOST_TECH_FLOOR = 100;
    static final int BOOST_TECH_STEP = 25;
    static final int BOOST_TECH_CAP = 200;
    static final int BOOST_MAN_ADD = 25000;

    private static boolean ready;

    private ConsoleCmds() {
    }

    public static void ensure() {
        if (ready) {
            return;
        }
        ready = true;
        try {
            reg("term", "关闭控制台");
            reg("q", "关闭控制台");
            reg("console", "开关控制台");
            reg("h", "帮助");
            reg("help", "帮助");
            reg("?", "帮助");
            reg("cls", "清空输出");
            reg("sys", "分辨率与帧率");
            reg("dbg", "调试开关");
            reg("fps", "帧率显示开关");
            reg("hi", "问好");
            reg("exportscen", "导出本地剧本到 Download/GemorinScenarios");
            reg("go", "定位 省/国家/全图");
            reg("neutral", "跳到中立陆地");
            reg("zoom", "缩放，缺省 1");
            reg("civ", "国家信息");
            reg("prov", "省份信息");
            reg("ls", "国家列表");
            reg("id", "当前省份编号");
            reg("ids", "ids on|off 军队显示编号");
            reg("ids on", "军队显示为编号");
            reg("ids off", "恢复军队显示");
            reg("watch", "旁观模式 SPECTATOR");
            reg("play", "把当前省所属国加入玩家");
            reg("civ +", "在当前省加入国家标签");
            reg("set", "set tech/money/move/manpower/diplo/gov/happy/risk/army");
            reg("add", "add pop/eco/army/money/move/diplo");
            reg("set tech", "科技 1-1000，显示为百分数");
            reg("add pop", "人口 +32500");
            reg("add eco", "经济 +32500");
            reg("add army", "加兵：add army [数量] [*]");
            reg("fill army", "己方陆省统一设兵");
            reg("set army", "设兵：set army 数量 [*]");
            reg("add money", "金钱 +313408");
            reg("add move", "移动力 +移费×50");
            reg("add diplo", "外交点 +7905");
            reg("fort", "堡垒设为 7");
            reg("port", "沿海港口设为 1");
            reg("tower", "哨塔设为 1");
            reg("war", "宣战 A B，先检查门槛");
            reg("peace-msg", "发送可议和消息");
            reg("lib", "禁止解放开关");
            reg("reload", "重载省份");
            reg("spin", "地图旋转");
            reg("party", "撒彩旗");
            reg("peace", "和谈 A B [停战1-50]");
            reg("peace ret", "归还占领并和谈");
            reg("ally", "ally + / ally -");
            reg("ally +", "结盟，开战则先和谈");
            reg("ally -", "退出同盟");
            reg("vassal", "vassal + 宗主 附庸 / vassal - 附庸");
            reg("vassal +", "收为附庸，先清战争");
            reg("vassal -", "释放附庸");
            reg("fog", "迷雾 0关 1经典 2探索");
            reg("fog rebuild", "按规则重算迷雾");
            reg("discover", "当前玩家全省可见并建交");
            reg("diff", "难度 0-4");
            reg("set gov", "合法切换政体");
            reg("scan gov", "列出可切换政体");
            reg("scan war", "列出与玩家交战的国家");
            reg("own", "占领当前省");
            reg("own annex", "吞并当前省并改正当归属");
            reg("core", "core + / core -");
            reg("core +", "给当前省加核心");
            reg("core -", "移除核心");
            reg("set happy", "幸福 0-100");
            reg("set risk", "革命风险 0-100");
            reg("rel", "关系 A B 数值");
            reg("set money", "设置金钱");
            reg("set move", "设置移动力");
            reg("set manpower", "设置人力");
            reg("set diplo", "设置外交点");
            reg("boost", "温和加强资源");
            reg("god", "加强+己方陆省加兵");
            reg("who", "当前玩家、省份、日期");
            reg("date", "日期，date +y / +m");
            reg("hist", "命令历史");
            reg("fav", "收藏 fav / fav add / fav 序号");
            reg("sug", "补全与近似命令");
            reg("run", "运行 assets/console/名称.txt");
            reg("sh", "连续执行，分号分隔");
            reg("calc", "计算帮助；或 calc 表达式（也可直接输入表达式）");
            reg("funcs", "列出计算函数");
            reg("vars", "列出计算变量");
            reg("reset", "清空计算变量");
            // Aliases → existing implementations (no new dangerous surface)
            reg("clear", "清空输出（同 cls）");
            reg("clr", "清空输出（同 cls）");
            reg("exit", "关闭控制台（同 q）");
            reg("quit", "关闭控制台（同 q）");
            reg("annex", "吞并当前省（同 own annex）");
            reg("reveal", "全省可见（同 discover）");
            reg("info", "当前状态（同 who）");
            reg("和谈", "和谈（同 peace）");
            reg("宣战", "宣战（同 war）");
            reg("结盟", "结盟（同 ally）");
            reg("附庸", "附庸（同 vassal）");
            reg("发现", "全省可见（同 discover）");
            reg("加强", "温和加强（同 boost）");
            ConsoleEngine.rebuildNameCache();
        } catch (Throwable ignored) {
            try {
                ConsoleEngine.rebuildNameCache();
            } catch (Throwable ignored2) {
            }
        }
    }

    private static void reg(String name, String help) {
        ConsoleEngine.add(name, help);
    }

    /** Map aliases to canonical command names before dispatch. */
    private static String resolveAlias(String name) {
        if (name == null) {
            return name;
        }
        if ("clear".equals(name) || "clr".equals(name)) {
            return "cls";
        }
        if ("exit".equals(name) || "quit".equals(name)) {
            return "q";
        }
        if ("annex".equals(name)) {
            return "own annex";
        }
        if ("reveal".equals(name) || "发现".equals(name)) {
            return "discover";
        }
        if ("info".equals(name)) {
            return "who";
        }
        if ("和谈".equals(name)) {
            return "peace";
        }
        if ("宣战".equals(name)) {
            return "war";
        }
        if ("结盟".equals(name)) {
            return "ally";
        }
        if ("附庸".equals(name)) {
            return "vassal";
        }
        if ("加强".equals(name)) {
            return "boost";
        }
        return name;
    }

    static void run(String name, String[] args) {
        try {
            name = resolveAlias(name);
            if ("term".equals(name) || "q".equals(name)) {
                term();
            } else if ("console".equals(name)) {
                toggleConsole();
            } else if ("h".equals(name) || "help".equals(name) || "?".equals(name)) {
                ConsoleEngine.printHelpTopic(ConsoleContext.join(args, 0));
            } else if ("cls".equals(name)) {
                cls();
            } else if ("sys".equals(name)) {
                sys();
            } else if ("dbg".equals(name)) {
                dbg();
            } else if ("fps".equals(name)) {
                fps();
            } else if ("hi".equals(name)) {
                hi();
            } else if ("exportscen".equals(name)) {
                exportScenarios(args);
            } else if ("go".equals(name)) {
                go(args);
            } else if ("neutral".equals(name)) {
                neutral();
            } else if ("zoom".equals(name)) {
                zoom(args);
            } else if ("civ".equals(name)) {
                civInfo(args);
            } else if ("prov".equals(name)) {
                provInfo(args);
            } else if ("ls".equals(name)) {
                listCivs();
            } else if ("id".equals(name)) {
                showId();
            } else if ("ids".equals(name)) {
                ConsoleOut.usage("ids on | ids off");
            } else if ("ids on".equals(name)) {
                idsOn();
            } else if ("ids off".equals(name)) {
                idsOff();
            } else if ("watch".equals(name)) {
                watch();
            } else if ("play".equals(name)) {
                play();
            } else if ("civ +".equals(name)) {
                addCiv(args);
            } else if ("set".equals(name) || "add".equals(name) || "ally".equals(name) || "vassal".equals(name) || "core".equals(name)) {
                ConsoleOut.usage(name + "  " + ConsoleEngine.helpOf(name));
            } else if ("set tech".equals(name)) {
                setTech(args);
            } else if ("add pop".equals(name)) {
                addPopCmd(args);
            } else if ("add eco".equals(name)) {
                addEcoCmd(args);
            } else if ("add army".equals(name)) {
                addArmyCmd(args);
            } else if ("set army".equals(name)) {
                setArmy(args);
            } else if ("fill army".equals(name)) {
                fillArmy(args);
            } else if ("add money".equals(name)) {
                addMoney(args);
            } else if ("add move".equals(name)) {
                addMove(args);
            } else if ("add diplo".equals(name)) {
                addDiplo(args);
            } else if ("fort".equals(name)) {
                fort();
            } else if ("port".equals(name)) {
                port();
            } else if ("tower".equals(name)) {
                tower();
            } else if ("war".equals(name)) {
                war(args);
            } else if ("peace-msg".equals(name)) {
                peaceMsg(args);
            } else if ("lib".equals(name)) {
                lib();
            } else if ("reload".equals(name)) {
                reload(args);
            } else if ("spin".equals(name)) {
                spin();
            } else if ("party".equals(name)) {
                party();
            } else if ("peace".equals(name)) {
                peaceCmd(args, false);
            } else if ("peace ret".equals(name)) {
                peaceCmd(args, true);
            } else if ("ally +".equals(name)) {
                ally(args, true);
            } else if ("ally -".equals(name)) {
                ally(args, false);
            } else if ("vassal +".equals(name)) {
                vassalOn(args);
            } else if ("vassal -".equals(name)) {
                vassalOff(args);
            } else if ("fog".equals(name)) {
                fog(args);
            } else if ("fog rebuild".equals(name)) {
                fogRebuild();
            } else if ("discover".equals(name)) {
                discover();
            } else if ("diff".equals(name)) {
                diff(args);
            } else if ("set gov".equals(name)) {
                setGov(args);
            } else if ("scan gov".equals(name)) {
                scanGov(args);
            } else if ("scan war".equals(name)) {
                scanWar();
            } else if ("own".equals(name)) {
                own(args, false);
            } else if ("own annex".equals(name)) {
                own(args, true);
            } else if ("core +".equals(name)) {
                core(args, true);
            } else if ("core -".equals(name)) {
                core(args, false);
            } else if ("set happy".equals(name)) {
                setHappy(args);
            } else if ("set risk".equals(name)) {
                setRisk(args);
            } else if ("rel".equals(name)) {
                rel(args);
            } else if ("set money".equals(name)) {
                setMoney(args);
            } else if ("set move".equals(name)) {
                setMove(args);
            } else if ("set manpower".equals(name)) {
                setMan(args);
            } else if ("set diplo".equals(name)) {
                setDiplo(args);
            } else if ("boost".equals(name)) {
                boost(args, true);
            } else if ("god".equals(name)) {
                god(args);
            } else if ("who".equals(name)) {
                who();
            } else if ("date".equals(name)) {
                date(args);
            } else if ("hist".equals(name)) {
                ConsoleHistory.print();
            } else if ("fav".equals(name)) {
                fav(args);
            } else if ("sug".equals(name)) {
                sug(args);
            } else if ("run".equals(name)) {
                runFile(args);
            } else if ("sh".equals(name)) {
                runSh(ConsoleContext.join(args, 0));
            } else if ("calc".equals(name) || "funcs".equals(name) || "vars".equals(name) || "reset".equals(name)) {
                // Normally intercepted by ConsoleCalc.handleExplicit; safe fallback
                if ("funcs".equals(name)) {
                    CalcFns.printHelp();
                } else if ("vars".equals(name)) {
                    ConsoleCalc.handleExplicit("vars", "vars");
                } else if ("reset".equals(name)) {
                    ConsoleCalc.resetVars();
                } else if (args == null || args.length == 0) {
                    ConsoleCalc.printTopicHelp();
                } else {
                    ConsoleCalc.handleExplicit("calc " + ConsoleContext.join(args, 0),
                            "calc " + ConsoleContext.join(args, 0));
                }
            } else {
                ConsoleOut.err("未知命令");
            }
        } catch (Throwable t) {
            try {
                CFG.exceptionStack(t);
            } catch (Throwable ignored) {
            }
            ConsoleOut.err("命令失败");
        }
    }

    private static void term() {
        ConsoleEngine.closeConsole();
        ConsoleOut.ok("控制台已关闭");
    }

    private static void toggleConsole() {
        try {
            if (CFG.menuManager == null) {
                ConsoleOut.err("菜单未就绪");
                return;
            }
            boolean open = CFG.menuManager.getVisible_InGame_FlagAction_Console();
            CFG.menuManager.setVisible_InGame_FlagAction_Console(!open);
            if (!open) {
                ConsoleOut.toast("Hello", null);
                try {
                    CFG.showKeyboard_Commands();
                } catch (Throwable ignored) {
                }
            } else {
                ConsoleEngine.closeConsole();
            }
        } catch (Throwable t) {
            ConsoleOut.err("无法开关控制台");
        }
    }

    private static void cls() {
        try {
            if (Commands.sConsole != null) {
                Commands.sConsole.clear();
            }
        } catch (Throwable ignored) {
        }
        ConsoleOut.line("已清空");
    }

    private static void sys() {
        try {
            if (Gdx.graphics == null) {
                ConsoleOut.err("图形未就绪");
                return;
            }
            ConsoleOut.line("FramesPerSecond: " + Gdx.graphics.getFramesPerSecond());
            ConsoleOut.line("Width: " + Gdx.graphics.getWidth());
            ConsoleOut.line("Height: " + Gdx.graphics.getHeight());
            ConsoleOut.line("PpiX: " + Gdx.graphics.getPpiX());
            ConsoleOut.line("PpiY: " + Gdx.graphics.getPpiY());
            ConsoleOut.line("Density: " + Gdx.graphics.getDensity());
            ConsoleOut.line("XHDPI: " + CFG.XHDPI);
            ConsoleOut.line("XXHDPI: " + CFG.XXHDPI);
            ConsoleOut.line("XXXHDPI: " + CFG.XXXHDPI);
            ConsoleOut.line("XXXXHDPI: " + CFG.XXXXHDPI);
            ConsoleOut.line("版本 " + CFG.sVERSION);
        } catch (Throwable t) {
            ConsoleOut.err("系统信息失败");
        }
    }

    private static void dbg() {
        try {
            CFG.DEBUG_MODE = !CFG.DEBUG_MODE;
            ConsoleOut.ok("调试 " + (CFG.DEBUG_MODE ? "开" : "关"));
        } catch (Throwable t) {
            ConsoleOut.err("调试开关失败");
        }
    }

    private static void fps() {
        try {
            AoCGame.drawFPS = !AoCGame.drawFPS;
            ConsoleOut.ok("帧率显示 " + (AoCGame.drawFPS ? "开" : "关"));
        } catch (Throwable t) {
            ConsoleOut.err("帧率开关失败");
        }
    }

    private static void hi() {
        ConsoleOut.ok("你好");
    }

    private static void exportScenarios(String[] args) {
        try {
            if (args != null && args.length > 0 && args[0] != null && args[0].length() > 0) {
                String path = ScenarioExport.exportTag(args[0].trim());
                if (path != null) {
                    ConsoleOut.ok("已导出 " + args[0] + " -> Download/GemorinScenarios/");
                } else {
                    ConsoleOut.err("未找到本地剧本: " + args[0]);
                }
                return;
            }
            int n = ScenarioExport.exportAllLocal();
            ConsoleOut.ok("已导出 " + n + " 个剧本到 Download/GemorinScenarios/");
            ConsoleOut.ok("PC: python tools/import_exported_scenarios.py");
        } catch (Throwable t) {
            ConsoleOut.err("导出失败: " + t.getMessage());
        }
    }

    private static void go(String[] args) {
        try {
            if (!ConsoleContext.ready() || CFG.map == null) {
                ConsoleOut.err("地图未就绪");
                return;
            }
            if (args == null || args.length == 0) {
                worldView();
                ConsoleOut.ok("全图");
                return;
            }
            if ("neutral".equals(args[0])) {
                neutral();
                return;
            }
            if ("civ".equals(args[0])) {
                int civ = ConsoleContext.resolveCiv(ConsoleContext.join(args, 1));
                if (civ <= 0) {
                    return;
                }
                CFG.map.getMapCoordinates().centerToCivilizationBox(civ, true);
                ConsoleOut.ok(CFG.game.getCiv(civ).getCivName());
                return;
            }
            int prov = ConsoleContext.resolveProv(ConsoleContext.join(args, 0));
            if (prov < 0) {
                return;
            }
            CFG.map.getMapCoordinates().centerToProvinceID(prov);
            CFG.game.setActiveProvinceID(prov);
            Province p = CFG.game.getProvince(prov);
            ConsoleOut.ok(p == null ? ("省 " + prov) : p.getName());
        } catch (Throwable t) {
            ConsoleOut.err("定位失败");
        }
    }

    private static void worldView() {
        CFG.map.getMapScroll().stopScrollingTheMap();
        CFG.map.getMapScale().setCurrentScale(Map_Scale.MINSCALE);
        Map_BG bg = CFG.map.getMapBG();
        float scale = Map_Scale.MINSCALE <= 0f ? 1f : Map_Scale.MINSCALE;
        int x = (int) (bg.getWidth() / 2f - (CFG.GAME_WIDTH / scale) / 2f);
        int y = (int) (bg.getHeight() / 2f - (CFG.GAME_HEIGHT / scale) / 2f);
        CFG.map.getMapCoordinates().setNewPosX(-x);
        CFG.map.getMapCoordinates().setNewPosY(-y);
    }

    private static void neutral() {
        try {
            int n = CFG.game.getProvincesSize();
            for (int i = 0; i < n; i++) {
                Province p = CFG.game.getProvince(i);
                if (p == null || p.getWasteland() >= 0 || p.getSeaProvince() || p.getCivID() != 0) {
                    continue;
                }
                CFG.game.setActiveProvinceID(i);
                if (CFG.map != null && CFG.map.getMapCoordinates() != null) {
                    CFG.map.getMapCoordinates().centerToProvinceID(i);
                }
                ConsoleOut.ok("中立 " + p.getName());
                return;
            }
            ConsoleOut.err("没有中立陆地");
        } catch (Throwable t) {
            ConsoleOut.err("中立定位失败");
        }
    }

    private static void zoom(String[] args) {
        try {
            if (CFG.map == null || CFG.map.getMapScale() == null) {
                ConsoleOut.err("地图未就绪");
                return;
            }
            float scale = 1f;
            if (args != null && args.length > 0) {
                String text = args[0].replace(',', '.');
                scale = Float.parseFloat(text);
            }
            CFG.map.getMapScale().setCurrentScale(scale);
            ConsoleOut.ok("缩放 " + CFG.map.getMapScale().getCurrentScale());
        } catch (Throwable t) {
            ConsoleOut.err("缩放失败");
        }
    }

    private static void civInfo(String[] args) {
        int id = (args == null || args.length == 0) ? ownerOfActive() : ConsoleContext.resolveCiv(ConsoleContext.join(args, 0));
        if (id < 0) {
            return;
        }
        Civilization c = ConsoleContext.civ(id);
        if (c == null) {
            ConsoleOut.err("国家无效");
            return;
        }
        ConsoleOut.line("国家 " + id + " " + c.getCivTag() + " " + c.getCivName());
        ConsoleOut.line("省 " + c.getNumOfProvinces() + " 钱 " + c.getMoney() + " 移动 " + c.getMovePoints());
        ConsoleOut.line("外交 " + c.getDiplomacyPoints() + " 人力 " + safeMan(c) + " 科技 " + c.getTechnologyLevel());
        ConsoleOut.line("政体 " + c.getIdeologyID() + " 宗主 " + c.getPuppetOfCivID() + " 玩家 " + c.getControlledByPlayer());
    }

    private static int ownerOfActive() {
        int prov = ConsoleContext.requireActive();
        if (prov < 0) {
            return -1;
        }
        return CFG.game.getProvince(prov).getCivID();
    }

    private static void provInfo(String[] args) {
        int id = (args == null || args.length == 0) ? ConsoleContext.requireActive() : ConsoleContext.resolveProv(ConsoleContext.join(args, 0));
        if (id < 0) {
            return;
        }
        Province p = ConsoleContext.province(id);
        if (p == null) {
            ConsoleOut.err("省份无效");
            return;
        }
        int pop = 0;
        try {
            if (p.getPopulationData() != null) {
                pop = p.getPopulationData().getPopulation();
            }
        } catch (Throwable ignored) {
        }
        int army = 0;
        try {
            army = p.getArmy(0);
        } catch (Throwable ignored) {
        }
        ConsoleOut.line("省 " + id + " " + p.getName() + " 国家 " + p.getCivID());
        ConsoleOut.line("人口 " + pop + " 经济 " + p.getEconomy() + " 军队 " + army);
        ConsoleOut.line("堡 " + p.getLevelOfFort() + " 港 " + p.getLevelOfPort() + " 塔 " + p.getLevelOfWatchTower());
        ConsoleOut.line("幸福 " + p.getHappiness() + " 风险 " + p.getRevolutionaryRisk() + " 归属 " + p.getTrueOwnerOfProvince());
    }

    private static void listCivs() {
        try {
            int n = CFG.game.getCivsSize();
            for (int i = 1; i < n; i++) {
                Civilization c = CFG.game.getCiv(i);
                if (c == null) {
                    continue;
                }
                ConsoleOut.line(i + " " + c.getCivTag() + " " + c.getCivName() + " 省" + c.getNumOfProvinces());
            }
        } catch (Throwable t) {
            ConsoleOut.err("列表失败");
        }
    }

    private static void showId() {
        int id = ConsoleContext.requireActive();
        if (id < 0) {
            return;
        }
        Province p = CFG.game.getProvince(id);
        ConsoleOut.ok("省 " + id + " " + (p == null ? "" : p.getName()) + " 国家 " + (p == null ? -1 : p.getCivID()));
    }

    private static void idsOn() {
        try {
            CFG.game.buildDrawArmy_ShowIDs();
            ConsoleOut.ok("军队显示编号");
        } catch (Throwable t) {
            ConsoleOut.err("显示编号失败");
        }
    }

    private static void idsOff() {
        try {
            CFG.game.buildDrawArmy();
            ConsoleOut.ok("恢复军队显示");
        } catch (Throwable t) {
            ConsoleOut.err("恢复军队失败");
        }
    }

    private static void watch() {
        try {
            CFG.SPECTATOR_MODE = true;
            ConsoleOut.ok("旁观模式已开启");
            ConsoleOut.usage("Games -> New Game -> Options -> Spectator Mode");
        } catch (Throwable t) {
            ConsoleOut.err("旁观失败");
        }
    }

    private static void play() {
        int prov = ConsoleContext.requireLand();
        if (prov < 0) {
            return;
        }
        int civId = CFG.game.getProvince(prov).getCivID();
        if (civId <= 0) {
            ConsoleOut.err("请选择有国家的陆地省");
            return;
        }
        try {
            if (CFG.SPECTATOR_MODE) {
                CFG.SPECTATOR_MODE = false;
                if (CFG.game.getPlayersSize() == 1) {
                    CFG.game.removePlayer(0);
                }
            }
            Civilization c = CFG.game.getCiv(civId);
            if (c.getControlledByPlayer()) {
                int pid = CFG.game.getPlayerID_ByCivID(civId);
                if (CFG.PLAYER_TURNID + 1 == CFG.game.getPlayersSize()) {
                    CFG.PLAYER_TURNID = 0;
                }
                if (pid >= 0) {
                    CFG.game.removePlayer(pid);
                }
                if (CFG.gameAction != null) {
                    CFG.gameAction.buildFogOfWar(CFG.game.getPlayersSize() - 1);
                }
                ConsoleOut.ok("移除玩家 " + c.getCivName());
                return;
            }
            CFG.game.addPlayer(civId);
            if (CFG.FOG_OF_WAR == 2) {
                Player last = CFG.game.getPlayer(CFG.game.getPlayersSize() - 1);
                if (last != null) {
                    last.buildMetProvincesAndCivs();
                }
            }
            Player lastP = CFG.game.getPlayer(CFG.game.getPlayersSize() - 1);
            if (lastP != null) {
                lastP.loadPlayersFlag();
            }
            if (CFG.gameAction != null) {
                CFG.gameAction.buildFogOfWar(CFG.game.getPlayersSize() - 1);
            }
            ConsoleOut.ok("加入玩家 " + c.getCivName());
        } catch (Throwable t) {
            ConsoleOut.err("play 失败");
        }
    }

    private static void addCiv(String[] args) {
        int prov = ConsoleContext.requireLand();
        if (prov < 0) {
            return;
        }
        if (args == null || args.length == 0) {
            ConsoleOut.usage("civ + 标签");
            return;
        }
        String tag = ConsoleContext.join(args, 0);
        try {
            Province province = CFG.game.getProvince(prov);
            if (province.getIsCapital()) {
                ConsoleOut.err("不能占用首都");
                return;
            }
            int n = CFG.game.getCivsSize();
            for (int i = 1; i < n; i++) {
                Civilization c = CFG.game.getCiv(i);
                if (c != null && c.getCivTag() != null && c.getCivTag().equalsIgnoreCase(tag)) {
                    ConsoleOut.err(c.getCivName() + " 已在局内");
                    return;
                }
            }
            int oldPop = 0;
            if (province.getPopulationData() != null) {
                oldPop = province.getPopulationData().getPopulation();
            }
            province.updateArmy(province.getCivID(0), 0);
            boolean created = CFG.game.createScenarioAddCivilization(tag, prov, false, true, true);
            if (!created) {
                ConsoleOut.err("加入国家失败");
                return;
            }
            int id = findCivTag(tag);
            if (id < 0) {
                id = CFG.game.getCivsSize() - 1;
            }
            Civilization born = CFG.game.getCiv(id);
            if (born != null) {
                born.setMoney(100L);
            }
            if (CFG.FOG_OF_WAR == 2) {
                int players = CFG.game.getPlayersSize();
                for (int i = 0; i < players; i++) {
                    Player player = CFG.game.getPlayer(i);
                    if (player == null) {
                        continue;
                    }
                    player.setMetCivilization(id, true);
                    player.setFogOfWar(prov, true);
                }
            }
            if (province.getPopulationData() != null) {
                province.getPopulationData().clearData();
                province.getPopulationData().setPopulationOfCivID(province.getCivID(), oldPop);
            }
            ConsoleContext.touchProvince(prov);
            ConsoleOut.ok("加入 " + tag + " #" + id + " 金钱 100");
        } catch (Throwable t) {
            ConsoleOut.err("加入国家失败");
        }
    }

    private static int findCivTag(String tag) {
        try {
            int n = CFG.game.getCivsSize();
            for (int i = n - 1; i >= 1; i--) {
                Civilization c = CFG.game.getCiv(i);
                if (c != null && c.getCivTag() != null && c.getCivTag().equalsIgnoreCase(tag)) {
                    return i;
                }
            }
        } catch (Throwable ignored) {
        }
        return -1;
    }

    private static void setTech(String[] args) {
        int level = Integer.MIN_VALUE;
        int civ = -1;
        if (args != null) {
            for (int i = 0; i < args.length; i++) {
                Integer n = ConsoleContext.intOrNull(args[i]);
                if (n != null && level == Integer.MIN_VALUE) {
                    level = n.intValue();
                } else if (civ < 0) {
                    civ = ConsoleContext.resolveCiv(args[i]);
                    if (civ < 0) {
                        return;
                    }
                }
            }
        }
        if (level == Integer.MIN_VALUE) {
            ConsoleOut.usage("set tech [国家] 1-1000");
            return;
        }
        if (civ < 0) {
            int prov = ConsoleContext.requireLand();
            if (prov < 0) {
                return;
            }
            civ = CFG.game.getProvince(prov).getCivID();
        }
        if (level < 1) {
            level = 1;
        }
        if (level > 1000) {
            level = 1000;
        }
        Civilization c = ConsoleContext.civ(civ);
        if (c == null) {
            ConsoleOut.err("国家无效");
            return;
        }
        c.setTechnologyLevel(level / 100f);
        if (civ >= 0) {
            ConsoleContext.touchProvince(ConsoleContext.activeProvince());
        }
        ConsoleOut.ok("科技 " + c.getTechnologyLevel() + " " + c.getCivName());
    }

    private static void addPopCmd(String[] args) {
        int prov = ConsoleContext.requireLand();
        if (prov < 0) {
            return;
        }
        int delta = deltaOf(args, POP_ADD);
        int real = addPop(prov, delta);
        ConsoleContext.touchProvince(prov);
        ConsoleOut.ok("人口 +" + real);
    }

    private static int addPop(int prov, int delta) {
        Province p = CFG.game.getProvince(prov);
        Province_Population pop = p.getPopulationData();
        int civ = p.getCivID();
        int before = pop.getPopulationOfCivID(civ);
        pop.setPopulationOfCivID(civ, before + delta);
        return pop.getPopulationOfCivID(civ) - before;
    }

    private static void addEcoCmd(String[] args) {
        int prov = ConsoleContext.requireLand();
        if (prov < 0) {
            return;
        }
        Province p = CFG.game.getProvince(prov);
        int before = p.getEconomy();
        p.setEconomy(before + deltaOf(args, ECO_ADD));
        ConsoleContext.touchProvince(prov);
        ConsoleOut.ok("经济 +" + (p.getEconomy() - before));
    }

    private static void addArmyCmd(String[] args) {
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


    private static void setArmy(String[] args) {
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


    private static void addMoney(String[] args) {
        int civ = civOrPlayer(args);
        if (civ < 0) {
            return;
        }
        long delta = longDelta(args, MONEY_ADD);
        Civilization c = CFG.game.getCiv(civ);
        long before = c.getMoney();
        c.setMoney(before + delta);
        ConsoleContext.top(civ);
        ConsoleOut.ok("金钱 +" + (c.getMoney() - before) + " " + c.getCivName());
    }

    private static void addMove(String[] args) {
        int civ = civOrPlayer(args);
        if (civ < 0) {
            return;
        }
        Civilization c = CFG.game.getCiv(civ);
        int before = c.getMovePoints();
        int delta = explicitInt(args);
        if (delta == Integer.MIN_VALUE) {
            int cost = 1;
            try {
                Ideology ide = CFG.ideologiesManager.getIdeology(c.getIdeologyID());
                if (ide != null && ide.COST_OF_MOVE > 0) {
                    cost = ide.COST_OF_MOVE;
                }
            } catch (Throwable ignored) {
            }
            delta = cost * MOVE_TIMES;
        }
        c.setMovePoints(before + delta);
        ConsoleContext.top(civ);
        ConsoleOut.ok("移动 +" + (c.getMovePoints() - before) + " " + c.getCivName());
    }

    private static void addDiplo(String[] args) {
        int civ = civOrPlayer(args);
        if (civ < 0) {
            return;
        }
        int delta = deltaOf(args, DIPLO_ADD);
        Civilization c = CFG.game.getCiv(civ);
        int before = c.getDiplomacyPoints();
        c.setDiplomacyPoints(before + delta);
        ConsoleContext.top(civ);
        ConsoleOut.ok("外交 +" + (c.getDiplomacyPoints() - before) + " " + c.getCivName());
    }

    private static void fort() {
        int prov = ConsoleContext.requireLand();
        if (prov < 0) {
            return;
        }
        CFG.game.getProvince(prov).setLevelOfFort(FORT_LEVEL);
        ConsoleContext.touchProvince(prov);
        ConsoleOut.ok("堡垒 " + FORT_LEVEL);
    }

    private static void port() {
        int prov = ConsoleContext.requireLand();
        if (prov < 0) {
            return;
        }
        Province p = CFG.game.getProvince(prov);
        if (p.getLevelOfPort() < 0) {
            ConsoleOut.err("不是沿海");
            return;
        }
        p.setLevelOfPort(1);
        ConsoleContext.touchProvince(prov);
        ConsoleOut.ok("港口 1");
    }

    private static void tower() {
        int prov = ConsoleContext.requireLand();
        if (prov < 0) {
            return;
        }
        CFG.game.getProvince(prov).setLevelOfWatchTower(1);
        ConsoleContext.touchProvince(prov);
        ConsoleOut.ok("哨塔 1");
    }

    private static void war(String[] args) {
        int a;
        int b;
        if (args == null || args.length < 2) {
            a = ConsoleContext.playerCiv();
            int prov = CFG.game.getActiveProvinceID();
            if (a <= 0 || prov < 0) {
                ConsoleOut.usage("war 国家A 国家B  或先选中敌国省份");
                return;
            }
            b = CFG.game.getProvince(prov).getCivID();
            if (b <= 0) {
                ConsoleOut.err("当前省无国家");
                return;
            }
        } else {
            a = ConsoleContext.resolveCiv(args[0]);
            b = ConsoleContext.resolveCiv(args[1]);
            if (a < 0 || b < 0) {
                return;
            }
        }
        if (a == b || a <= 0 || b <= 0) {
            ConsoleOut.err("国家编号无效");
            return;
        }
        try {
            Game g = CFG.game;
            if (g.getCivsAtWar(a, b)) {
                ConsoleOut.err("已经在战争中");
                return;
            }
            if (g.getCiv(a).getNumOfProvinces() <= 0 || g.getCiv(b).getNumOfProvinces() <= 0) {
                ConsoleOut.err("国家没有省份");
                return;
            }
            if (g.getCivRelation_OfCivB(a, b) > 50f) {
                ConsoleOut.err("关系高于50");
                return;
            }
            if (g.getCivTruce(a, b) > 0) {
                ConsoleOut.err("仍在停战");
                return;
            }
            if (g.getCivsAreAllied_IncludeVassal(a, b, true)) {
                ConsoleOut.err("同盟或附庸不能宣战");
                return;
            }
            g.declareWar(a, b, true);
            if (!g.getCivsAtWar(a, b)) {
                ConsoleOut.err("宣战未生效");
                return;
            }
            ConsoleOut.ok("宣战 " + g.getCiv(a).getCivName() + " -> " + g.getCiv(b).getCivName());
        } catch (Throwable t) {
            ConsoleOut.err("宣战失败");
        }
    }

    private static void peaceMsg(String[] args) {
        if (args == null || args.length < 2) {
            ConsoleOut.usage("peace-msg 发起方 接收方");
            return;
        }
        int from = ConsoleContext.resolveCiv(args[0]);
        int to = ConsoleContext.resolveCiv(args[1]);
        if (from < 0 || to < 0) {
            return;
        }
        try {
            if (!CFG.game.getCivsAtWar(from, to)) {
                ConsoleOut.err("双方不在战争中");
                return;
            }
            Civilization target = CFG.game.getCiv(to);
            target.civGameData.civilization_Diplomacy_GameData.messageBox.addMessage(new Message_WeCanSignPeace(from));
            ConsoleOut.ok("议和消息 " + CFG.game.getCiv(from).getCivName() + " -> " + target.getCivName());
        } catch (Throwable t) {
            ConsoleOut.err("议和消息失败");
        }
    }

    private static void peaceCmd(String[] args, boolean ret) {
        int a;
        int b;
        int truce = 10;
        if (args == null || args.length < 2) {
            a = ConsoleContext.playerCiv();
            int prov = CFG.game.getActiveProvinceID();
            if (a <= 0 || prov < 0) {
                ConsoleOut.usage(ret ? "peace ret A B [停战]" : "peace A B [停战]  或先选中交战国省份");
                return;
            }
            b = CFG.game.getProvince(prov).getCivID();
            if (b <= 0) {
                ConsoleOut.err("当前省无国家");
                return;
            }
        } else {
            a = ConsoleContext.resolveCiv(args[0]);
            b = ConsoleContext.resolveCiv(args[1]);
            if (a < 0 || b < 0) {
                return;
            }
            if (args.length > 2 && ConsoleContext.intOrNull(args[2]) != null) {
                truce = ConsoleContext.intOrNull(args[2]).intValue();
            }
        }
        if (truce < 1) {
            truce = 1;
        }
        if (truce > 50) {
            truce = 50;
        }
        try {
            Game g = CFG.game;
            if (!g.getCivsAtWar(a, b) && g.getWarID(a, b) < 0) {
                ConsoleOut.err("双方不在战争中");
                return;
            }
            if (ret) {
                g.whitePeace_ReturnProvincesToRightfulOwners(a, b);
            }
            if (g.getCivsAtWar(a, b) || g.getWarID(a, b) >= 0) {
                g.acceptPeaceOffer(a, b, truce);
                pruneWar(a, b);
            }
            ConsoleContext.top(a);
            ConsoleContext.top(b);
            ConsoleOut.ok((ret ? "归还并和谈 " : "和谈 ") + g.getCiv(a).getCivName() + " / " + g.getCiv(b).getCivName() + " 停战" + truce);
        } catch (Throwable t) {
            ConsoleOut.err("和谈失败");
        }
    }

    private static void pruneWar(int a, int b) {
        Game g = CFG.game;
        int warId = g.getWarID(a, b);
        if (warId < 0) {
            return;
        }
        War_GameData war = g.getWar(warId);
        if (war == null) {
            return;
        }
        for (int pass = 0; pass < 6; pass++) {
            boolean changed = dropPeaceful(war, true) || dropPeaceful(war, false);
            if (!changed) {
                break;
            }
        }
            if (war.getAggressorsSize() <= 0 || war.getDefendersSize() <= 0) {
                g.removeWarData(warId);
            }
    }

    private static boolean dropPeaceful(War_GameData war, boolean aggressors) {
        int n = aggressors ? war.getAggressorsSize() : war.getDefendersSize();
        int[] ids = new int[n];
        for (int i = 0; i < n; i++) {
            WarCiv_GameData row = aggressors ? war.getAggressorID(i) : war.getDefenderID(i);
            ids[i] = row == null ? -1 : row.getCivID();
        }
        boolean changed = false;
        for (int i = 0; i < ids.length; i++) {
            if (ids[i] < 0) {
                continue;
            }
            if (!fightsOpposite(war, ids[i], !aggressors)) {
                if (aggressors) {
                    war.removeAggressor(ids[i]);
                } else {
                    war.removeDefender(ids[i]);
                }
                changed = true;
            }
        }
        return changed;
    }

    private static boolean fightsOpposite(War_GameData war, int civ, boolean oppositeAggressors) {
        int n = oppositeAggressors ? war.getAggressorsSize() : war.getDefendersSize();
        for (int i = 0; i < n; i++) {
            WarCiv_GameData row = oppositeAggressors ? war.getAggressorID(i) : war.getDefenderID(i);
            if (row == null || row.getCivID() == civ) {
                continue;
            }
            if (CFG.game.getCivsAtWar(civ, row.getCivID())) {
                return true;
            }
        }
        return false;
    }

    private static void ally(String[] args, boolean form) {
        if (args == null || args.length < 2) {
            ConsoleOut.usage(form ? "ally + A B" : "ally - A B");
            return;
        }
        int a = ConsoleContext.resolveCiv(args[0]);
        int b = ConsoleContext.resolveCiv(args[1]);
        if (a < 0 || b < 0 || a == b) {
            return;
        }
        try {
            Game g = CFG.game;
            if (form) {
                if (g.getCivsAtWar(a, b) || g.getWarID(a, b) >= 0) {
                    peaceCmd(new String[] {args[0], args[1], "10"}, false);
                    if (g.getCivsAtWar(a, b)) {
                        ConsoleOut.err("仍在战争，无法结盟");
                        return;
                    }
                }
                DiplomacyManager.acceptAllianceProposal(a, b);
                ConsoleOut.ok("结盟 " + g.getCiv(a).getCivName() + " / " + g.getCiv(b).getCivName());
            } else {
                if (!g.getCivsAreAllied(a, b) && !g.isAlly(a, b)) {
                    ConsoleOut.err("不是同盟");
                    return;
                }
                DiplomacyManager.leaveAlliance(a);
                ConsoleOut.ok("退出同盟 " + g.getCiv(a).getCivName());
            }
        } catch (Throwable t) {
            ConsoleOut.err("同盟操作失败");
        }
    }

    private static void vassalOn(String[] args) {
        if (args == null || args.length < 2) {
            ConsoleOut.usage("vassal + 宗主 附庸");
            return;
        }
        int lord = ConsoleContext.resolveCiv(args[0]);
        int vassal = ConsoleContext.resolveCiv(args[1]);
        if (lord <= 0 || vassal <= 0 || lord == vassal) {
            ConsoleOut.err("国家无效");
            return;
        }
        try {
            ArrayList foes = new ArrayList();
            int n = CFG.game.getCivsSize();
            for (int i = 1; i < n; i++) {
                if (i != vassal && CFG.game.getCivsAtWar(vassal, i)) {
                    foes.add(Integer.valueOf(i));
                }
            }
            for (int i = 0; i < foes.size(); i++) {
                int foe = ((Integer) foes.get(i)).intValue();
                peacePair(vassal, foe, 10, false);
            }
            if (stillAtWar(vassal)) {
                ConsoleOut.err("附庸仍在战争中");
                return;
            }
            CFG.game.getCiv(vassal).setPuppetOfCivID(lord, false);
            if (CFG.FOG_OF_WAR > 0) {
                int player = CFG.game.getPlayerID_ByCivID(lord);
                if (player >= 0 && CFG.gameAction != null) {
                    CFG.gameAction.buildFogOfWar(player);
                }
            }
            ConsoleContext.top(lord);
            ConsoleContext.top(vassal);
            ConsoleOut.ok("附庸 " + CFG.game.getCiv(vassal).getCivName() + " -> " + CFG.game.getCiv(lord).getCivName());
        } catch (Throwable t) {
            ConsoleOut.err("附庸失败");
        }
    }

    private static boolean stillAtWar(int civ) {
        try {
            int n = CFG.game.getCivsSize();
            for (int i = 1; i < n; i++) {
                if (i != civ && CFG.game.getCivsAtWar(civ, i)) {
                    return true;
                }
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    private static void vassalOff(String[] args) {
        if (args == null || args.length < 1) {
            ConsoleOut.usage("vassal - 附庸");
            return;
        }
        int vassal = ConsoleContext.resolveCiv(args[0]);
        if (vassal <= 0) {
            return;
        }
        try {
            Civilization c = CFG.game.getCiv(vassal);
            c.setPuppetOfCivID(c.getCivID(), false);
            ConsoleContext.top(vassal);
            ConsoleOut.ok("释放 " + c.getCivName());
        } catch (Throwable t) {
            ConsoleOut.err("释放失败");
        }
    }

    private static void peacePair(int a, int b, int truce, boolean ret) {
        peaceCmd(new String[] {String.valueOf(a), String.valueOf(b), String.valueOf(truce)}, ret);
    }

    private static void fog(String[] args) {
        if (args == null || args.length == 0) {
            ConsoleOut.ok("迷雾 " + fogName(CFG.FOG_OF_WAR));
            return;
        }
        Integer n = ConsoleContext.intOrNull(args[0]);
        int value = -1;
        if (n != null) {
            value = n.intValue();
        } else if ("off".equals(args[0]) || "关".equals(args[0])) {
            value = 0;
        } else if ("classic".equals(args[0]) || "经典".equals(args[0])) {
            value = 1;
        } else if ("discovery".equals(args[0]) || "探索".equals(args[0])) {
            value = 2;
        }
        if (value < 0 || value > 2) {
            ConsoleOut.usage("fog 0|1|2");
            return;
        }
        CFG.FOG_OF_WAR = value;
        ConsoleOut.ok("迷雾 " + fogName(value));
    }

    private static String fogName(int value) {
        if (value == 1) {
            return "1 经典";
        }
        if (value == 2) {
            return "2 探索";
        }
        return "0 关";
    }

    private static void fogRebuild() {
        try {
            int player = currentPlayer();
            if (player < 0 || CFG.gameAction == null) {
                ConsoleOut.err("没有玩家");
                return;
            }
            CFG.gameAction.buildFogOfWar(player);
            ConsoleOut.ok("已重算迷雾");
        } catch (Throwable t) {
            ConsoleOut.err("重算迷雾失败");
        }
    }

    private static void discover() {
        try {
            int player = currentPlayer();
            if (player < 0) {
                ConsoleOut.err("没有玩家");
                return;
            }
            Player p = CFG.game.getPlayer(player);
            int n = CFG.game.getProvincesSize();
            for (int i = 0; i < n; i++) {
                p.setFogOfWar(i, true);
            }
            p.buildMetProvincesAndCivs();
            ConsoleOut.ok("已探索全部省份");
        } catch (Throwable t) {
            ConsoleOut.err("探索失败");
        }
    }

    private static int currentPlayer() {
        try {
            int byCiv = CFG.game.getPlayerID_ByCivID(ConsoleContext.playerCiv());
            if (byCiv >= 0) {
                return byCiv;
            }
            if (CFG.PLAYER_TURNID >= 0 && CFG.PLAYER_TURNID < CFG.game.getPlayersSize()) {
                return CFG.PLAYER_TURNID;
            }
        } catch (Throwable ignored) {
        }
        return -1;
    }

    private static void diff(String[] args) {
        if (args == null || args.length == 0) {
            ConsoleOut.ok("难度 " + CFG.DIFFICULTY);
            return;
        }
        Integer n = ConsoleContext.intOrNull(args[0]);
        if (n == null || n.intValue() < 0 || n.intValue() > 4) {
            ConsoleOut.usage("diff 0-4");
            return;
        }
        CFG.DIFFICULTY = n.intValue();
        ConsoleOut.ok("难度 " + CFG.DIFFICULTY);
    }


    private static int resolveIdeology(String token) {
        if (token == null || token.length() == 0) {
            return -1;
        }
        Integer asInt = ConsoleContext.intOrNull(token);
        Ideologies_Manager im = CFG.ideologiesManager;
        if (asInt != null) {
            int id = asInt.intValue();
            if (id >= 0 && id < im.getIdeologiesSize()) {
                return id;
            }
            return -1;
        }
        String key = token.toLowerCase();
        for (int i = 0; i < im.getIdeologiesSize(); i++) {
            Ideology ide = im.getIdeology(i);
            if (ide == null) {
                continue;
            }
            String name = ide.getName();
            if (name != null && name.toLowerCase().equals(key)) {
                return i;
            }
            if (name != null && name.toLowerCase().startsWith(key)) {
                return i;
            }
        }
        return -1;
    }

    private static void setGov(String[] args) {
        if (args == null || args.length == 0) {
            ConsoleOut.usage("set gov [国家] 政体");
            return;
        }
        int civ = ConsoleContext.playerCiv();
        String token = args[args.length - 1];
        if (args.length >= 2) {
            String joined = ConsoleContext.join(args, 0);
            String who = joined.substring(0, Math.max(0, joined.length() - token.length())).trim();
            civ = ConsoleContext.resolveCiv(who);
            if (civ < 0) {
                return;
            }
        }
        if (civ < 0) {
            return;
        }
        applyGov(civ, token);
    }

    private static void applyGov(int civId, String token) {
        try {
            Ideologies_Manager im = CFG.ideologiesManager;
            if (im == null) {
                ConsoleOut.err("政体数据未就绪");
                return;
            }
            int ideo = -1;
            Integer asNum = ConsoleContext.intOrNull(token);
            if (asNum != null) {
                ideo = asNum.intValue();
            } else {
                try {
                    ideo = resolveIdeology(token);
                } catch (Throwable ignored) {
                    ideo = -1;
                }
                if (ideo < 0) {
                    int n = im.getIdeologiesSize();
                    for (int i = 0; i < n; i++) {
                        Ideology row = im.getIdeology(i);
                        if (row != null && row.getName() != null && row.getName().equalsIgnoreCase(token)) {
                            ideo = i;
                            break;
                        }
                    }
                }
            }
            if (ideo < 0 || ideo >= im.getIdeologiesSize()) {
                ConsoleOut.err("政体无效");
                return;
            }
            Civilization c = CFG.game.getCiv(civId);
            if (c.getIdeologyID() == ideo) {
                ConsoleOut.err("已经是该政体");
                return;
            }
            List allowed = im.canChangeToIdeology(civId);
            if (!ideologyAllowed(allowed, ideo)) {
                ConsoleOut.err("不能切换到该政体");
                return;
            }
            c.setNextElection(Game_Calendar.TURN_ID);
            c.setInReformation(0);
            if (c.civGameData != null) {
                c.civGameData.iChangeGoverment_SinceTurn = 0;
            }
            int cost = Ideologies_Manager.getChangeGovernmentCost(civId);
            if (c.getMoney() < cost) {
                c.setMoney((long) cost + 1000L);
            }
            if (c.getMovePoints() < 22) {
                c.setMovePoints(22);
            }
            boolean changed = DiplomacyManager.changeGovernmentType(civId, ideo);
            ConsoleContext.top(civId);
            if (!changed && c.getIdeologyID() != ideo) {
                ConsoleOut.err("切换政体失败");
                return;
            }
            String name = "";
            try {
                name = im.getIdeology(c.getIdeologyID()).getName();
            } catch (Throwable ignored) {
            }
            ConsoleOut.ok("政体 " + c.getCivName() + " -> " + name);
        } catch (Throwable t) {
            ConsoleOut.err("切换政体失败");
        }
    }

    private static void scanGov(String[] args) {
        int civ = (args == null || args.length == 0) ? ConsoleContext.playerCiv() : ConsoleContext.resolveCiv(ConsoleContext.join(args, 0));
        if (civ < 0) {
            return;
        }
        try {
            Ideologies_Manager im = CFG.ideologiesManager;
            List allowed = im.canChangeToIdeology(civ);
            int n = im.getIdeologiesSize();
            ConsoleOut.line("当前 " + CFG.game.getCiv(civ).getIdeologyID() + " " + CFG.game.getCiv(civ).getCivName());
            for (int i = 0; i < n; i++) {
                Ideology row = im.getIdeology(i);
                String name = row == null || row.getName() == null ? "?" : row.getName();
                ConsoleOut.line(i + " " + name + (ideologyAllowed(allowed, i) ? " 可" : " 否"));
            }
        } catch (Throwable t) {
            ConsoleOut.err("扫描政体失败");
        }
    }

    /** canChangeToIdeology returns one Boolean per ideology id. Null means unchecked. */
    private static boolean ideologyAllowed(List allowed, int ideologyId) {
        if (allowed == null) {
            return true;
        }
        try {
            if (ideologyId < 0 || ideologyId >= allowed.size()) {
                return false;
            }
            Object item = allowed.get(ideologyId);
            return item instanceof Boolean && ((Boolean) item).booleanValue();
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static void own(String[] args, boolean annex) {
        int prov = ConsoleContext.requireLand();
        if (prov < 0) {
            return;
        }
        int neu = (args == null || args.length == 0) ? ConsoleContext.playerCiv() : ConsoleContext.resolveCiv(ConsoleContext.join(args, 0));
        if (neu < 0) {
            return;
        }
        try {
            Province p = CFG.game.getProvince(prov);
            int old = p.getCivID();
            if (p.getIsCapital() && old > 0 && old != neu) {
                moveCapital(old, prov);
            }
            if (annex) {
                p.setTrueOwnerOfProvince(neu);
            }
            p.setCivID(neu, true);
            Civilization neo = CFG.game.getCiv(neu);
            int cap = neo.getCapitalProvinceID();
            Province capProv = ConsoleContext.province(cap);
            if (capProv == null || capProv.getCivID() != neu) {
                neo.setCapitalProvinceID(prov);
            }
            ConsoleContext.touchProvince(prov);
            ConsoleContext.top(neu);
            if (old != neu) {
                ConsoleContext.top(old);
            }
            ConsoleOut.ok((annex ? "吞并 " : "占领 ") + p.getName() + " -> " + neo.getCivName());
        } catch (Throwable t) {
            ConsoleOut.err(annex ? "吞并失败" : "占领失败");
        }
    }

    private static void moveCapital(int civId, int awayFrom) {
        try {
            int n = CFG.game.getProvincesSize();
            for (int i = 0; i < n; i++) {
                if (i == awayFrom) {
                    continue;
                }
                Province p = CFG.game.getProvince(i);
                if (p != null && p.getCivID() == civId && !p.getSeaProvince() && p.getWasteland() < 0) {
                    CFG.game.getCiv(civId).setCapitalProvinceID(i);
                    return;
                }
            }
        } catch (Throwable ignored) {
        }
    }

    private static void core(String[] args, boolean add) {
        int prov = ConsoleContext.requireLand();
        if (prov < 0) {
            return;
        }
        int civ = (args == null || args.length == 0) ? ConsoleContext.playerCiv() : ConsoleContext.resolveCiv(ConsoleContext.join(args, 0));
        if (civ < 0) {
            return;
        }
        try {
            Province_Core cores = CFG.game.getProvince(prov).getCore();
            if (cores == null) {
                ConsoleOut.err("没有核心数据");
                return;
            }
            if (add) {
                cores.addNewCore(civ, Game_Calendar.TURN_ID);
                ConsoleOut.ok("核心+ " + ConsoleContext.civLabel(civ));
            } else {
                cores.removeCore(civ);
                ConsoleOut.ok("核心- " + ConsoleContext.civLabel(civ));
            }
            ConsoleContext.touchProvince(prov);
        } catch (Throwable t) {
            ConsoleOut.err("核心操作失败");
        }
    }

    private static void setHappy(String[] args) {
        setFloatProv(args, true);
    }

    private static void setRisk(String[] args) {
        setFloatProv(args, false);
    }

    private static void setFloatProv(String[] args, boolean happy) {
        int prov = ConsoleContext.requireLand();
        if (prov < 0) {
            return;
        }
        if (args == null || args.length == 0) {
            ConsoleOut.usage(happy ? "set happy 0-100" : "set risk 0-100");
            return;
        }
        try {
            float value = Float.parseFloat(args[0].replace(',', '.'));
            if (value > 1f) {
                value = value / 100f;
            }
            if (value < 0f) {
                value = 0f;
            }
            if (value > 1f) {
                value = 1f;
            }
            Province p = CFG.game.getProvince(prov);
            if (happy) {
                p.setHappiness(value);
                ConsoleOut.ok("幸福 " + p.getHappiness());
            } else {
                p.setRevolutionaryRisk(value);
                ConsoleOut.ok("风险 " + p.getRevolutionaryRisk());
            }
            ConsoleContext.touchProvince(prov);
        } catch (Throwable t) {
            ConsoleOut.err("数值无效");
        }
    }

    private static void rel(String[] args) {
        if (args == null || args.length < 3) {
            ConsoleOut.usage("rel A B 数值");
            return;
        }
        int a = ConsoleContext.resolveCiv(args[0]);
        int b = ConsoleContext.resolveCiv(args[1]);
        if (a < 0 || b < 0) {
            return;
        }
        try {
            float value = Float.parseFloat(args[2].replace(',', '.'));
            CFG.game.setCivRelation_OfCivB(a, b, value);
            CFG.game.setCivRelation_OfCivB(b, a, value);
            ConsoleOut.ok("关系 " + CFG.game.getCivRelation_OfCivB(a, b));
        } catch (Throwable t) {
            ConsoleOut.err("关系设置失败");
        }
    }

    private static void setMoney(String[] args) {
        Long value = firstLong(args);
        if (value == null) {
            ConsoleOut.usage("set money 数量 [国家]");
            return;
        }
        int civ = civOrPlayer(args);
        if (civ < 0) {
            return;
        }
        Civilization c = CFG.game.getCiv(civ);
        c.setMoney(value.longValue());
        ConsoleContext.top(civ);
        ConsoleOut.ok("金钱 " + c.getMoney() + " " + c.getCivName());
    }

    private static void setMove(String[] args) {
        Integer value = firstInt(args);
        if (value == null) {
            ConsoleOut.usage("set move 数量 [国家]");
            return;
        }
        int civ = civOrPlayer(args);
        if (civ < 0) {
            return;
        }
        Civilization c = CFG.game.getCiv(civ);
        c.setMovePoints(value.intValue());
        ConsoleContext.top(civ);
        ConsoleOut.ok("移动 " + c.getMovePoints() + " " + c.getCivName());
    }

    private static void setMan(String[] args) {
        Integer value = firstInt(args);
        if (value == null) {
            ConsoleOut.usage("set manpower 数量 [国家]");
            return;
        }
        int civ = civOrPlayer(args);
        if (civ < 0) {
            return;
        }
        Civilization c = CFG.game.getCiv(civ);
        c.setManPower(value.intValue());
        ConsoleContext.top(civ);
        ConsoleOut.ok("人力 " + c.getManPower() + " " + c.getCivName());
    }

    private static void setDiplo(String[] args) {
        Integer value = firstInt(args);
        if (value == null) {
            ConsoleOut.usage("set diplo 数量 [国家]");
            return;
        }
        int civ = civOrPlayer(args);
        if (civ < 0) {
            return;
        }
        Civilization c = CFG.game.getCiv(civ);
        c.setDiplomacyPoints(value.intValue());
        ConsoleContext.top(civ);
        ConsoleOut.ok("外交 " + c.getDiplomacyPoints() + " " + c.getCivName());
    }

    private static void boost(String[] args, boolean echo) {
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


    private static void god(String[] args) {
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


    private static void scanWar() {
        try {
            int me = ConsoleContext.playerCiv();
            if (me <= 0) {
                ConsoleOut.err("无玩家国家");
                return;
            }
            int n = 0;
            for (int i = 1; i < CFG.game.getCivsSize(); i++) {
                if (i == me) {
                    continue;
                }
                if (CFG.game.getCivsAtWar(me, i)) {
                    ConsoleOut.ok(i + " " + CFG.game.getCiv(i).getCivName());
                    n++;
                }
            }
            if (n == 0) {
                ConsoleOut.ok("当前无交战");
            } else {
                ConsoleOut.ok("交战 " + n + " 国");
            }
        } catch (Throwable t) {
            ConsoleOut.err("scan war 失败");
        }
    }

    private static void who() {
        try {
            int civ = ConsoleContext.playerCiv();
            int prov = ConsoleContext.activeProvince();
            ConsoleOut.line("玩家 " + ConsoleContext.civLabel(civ) + " 回合位 " + CFG.PLAYER_TURNID);
            if (prov >= 0) {
                Province p = CFG.game.getProvince(prov);
                ConsoleOut.line("省份 " + prov + " " + (p == null ? "" : p.getName()));
            } else {
                ConsoleOut.line("未选省份");
            }
            ConsoleOut.line("日期 " + Game_Calendar.getCurrentDate() + " 迷雾 " + fogName(CFG.FOG_OF_WAR) + " 难度 " + CFG.DIFFICULTY);
        } catch (Throwable t) {
            ConsoleOut.err("状态失败");
        }
    }

    private static void date(String[] args) {
        try {
            if (args == null || args.length == 0) {
                ConsoleOut.ok(Game_Calendar.getCurrentDate() + " 回合" + Game_Calendar.TURN_ID);
                return;
            }
            String token = args[0];
            int amount = 1;
            boolean year = false;
            boolean month = false;
            String body = token;
            if (body.startsWith("+")) {
                body = body.substring(1);
            }
            if (body.endsWith("y")) {
                year = true;
                body = body.substring(0, body.length() - 1);
            } else if (body.endsWith("m")) {
                month = true;
                body = body.substring(0, body.length() - 1);
            } else if ("y".equals(token) || "+y".equals(token)) {
                year = true;
                body = "";
            } else if ("m".equals(token) || "+m".equals(token)) {
                month = true;
                body = "";
            }
            if (body.length() > 0 && ConsoleContext.intOrNull(body) != null) {
                amount = ConsoleContext.intOrNull(body).intValue();
            } else if (args.length > 1 && ConsoleContext.intOrNull(args[1]) != null) {
                amount = ConsoleContext.intOrNull(args[1]).intValue();
            }
            if (!year && !month) {
                ConsoleOut.usage("date +y / date +m / date +5y");
                return;
            }
            if (year) {
                Game_Calendar.addYears(amount);
            } else {
                addMonths(amount);
            }
            try {
                Game_Calendar.updateAge();
            } catch (Throwable ignored) {
            }
            if (CFG.gameAction != null) {
                CFG.gameAction.updateInGame_Date();
            }
            ConsoleOut.ok(Game_Calendar.getCurrentDate());
        } catch (Throwable t) {
            ConsoleOut.err("改日期失败");
        }
    }

    private static void addMonths(int amount) {
        int month = Game_Calendar.currentMonth;
        boolean oneBased = month >= 1 && month <= 12;
        int zero = oneBased ? month - 1 : month;
        zero += amount;
        int years = 0;
        while (zero >= 12) {
            zero -= 12;
            years++;
        }
        while (zero < 0) {
            zero += 12;
            years--;
        }
        Game_Calendar.currentMonth = oneBased ? zero + 1 : zero;
        if (years != 0) {
            Game_Calendar.addYears(years);
        }
    }

    private static void lib() {
        CFG.NO_LIBERITY = !CFG.NO_LIBERITY;
        ConsoleOut.ok("解放 " + (CFG.NO_LIBERITY ? "禁止" : "允许"));
    }

    private static void reload(String[] args) {
        int prov = (args == null || args.length == 0) ? ConsoleContext.requireActive() : ConsoleContext.resolveProv(args[0]);
        if (prov < 0) {
            return;
        }
        try {
            Editor_NeighboringProvinces.updateProvince(prov);
            ConsoleContext.touchProvince(prov);
            ConsoleOut.ok("重载省 " + prov);
        } catch (Throwable t) {
            ConsoleOut.err("重载失败");
        }
    }

    private static void spin() {
        try {
            Map_Scroll scroll = CFG.map.getMapScroll();
            scroll.setScrollPos(125000, 10);
            scroll.setScrollPos(10, 10);
            SliderMenu keyboard = CFG.menuManager.getKeyboard();
            if (keyboard != null) {
                keyboard.setVisible(false);
            }
            CFG.menuManager.setVisible_InGame_FlagAction(false);
            scroll.startScrollingTheMap();
            ConsoleOut.ok("转起来");
        } catch (Throwable t) {
            ConsoleOut.err("旋转失败");
        }
    }

    private static void party() {
        try {
            if (Commands.lShit == null) {
                Commands.lShit = new ArrayList();
            }
            Commands.lShit.clear();
            Random random = new Random();
            int count = CFG.GAME_WIDTH + CFG.GAME_HEIGHT;
            if (count < 1) {
                count = 1;
            }
            for (int i = 0; i < count; i++) {
                int x = CFG.GAME_WIDTH > 0 ? random.nextInt(CFG.GAME_WIDTH) : 0;
                int y = CFG.GAME_HEIGHT > 0 ? random.nextInt(CFG.GAME_HEIGHT) : 0;
                Commands.lShit.add(new Point_XY(x, y));
            }
            Commands.lShitTime = System.currentTimeMillis();
            if (CFG.menuManager != null && CFG.menuManager.getKeyboard() != null) {
                CFG.menuManager.getKeyboard().setVisible(false);
            }
            ConsoleOut.ok("彩旗");
        } catch (Throwable t) {
            ConsoleOut.err("彩旗失败");
        }
    }

    private static void fav(String[] args) {
        if (args == null || args.length == 0) {
            ConsoleHistory.favPrint();
            return;
        }
        if ("add".equals(args[0])) {
            String text = ConsoleContext.join(args, 1);
            if (text.length() == 0 && ConsoleHistory.size() >= 2) {
                text = ConsoleHistory.get(ConsoleHistory.size() - 1);
            }
            if (text == null || text.length() == 0) {
                ConsoleOut.usage("fav add 命令");
                return;
            }
            ConsoleHistory.favAdd(text);
            return;
        }
        Integer n = ConsoleContext.intOrNull(args[0]);
        if (n == null) {
            ConsoleHistory.favAdd(ConsoleContext.join(args, 0));
            return;
        }
        String line = ConsoleHistory.favGet(n.intValue());
        if (line == null) {
            ConsoleOut.err("没有这个收藏");
            return;
        }
        ConsoleEngine.execute(line);
    }

    private static void sug(String[] args) {
        String typed = ConsoleContext.join(args, 0);
        if (typed.length() == 0) {
            ConsoleOut.usage("sug 前缀");
            return;
        }
        List names = ConsoleEngine.names();
        String unique = ConsoleSuggest.uniquePrefix(typed, names);
        if (unique != null) {
            ConsoleOut.ok("补全 " + unique + "  " + ConsoleEngine.helpOf(unique));
            return;
        }
        String first = typed;
        int sp = typed.indexOf(' ');
        if (sp > 0) {
            first = typed.substring(0, sp);
        }
        List near = ConsoleSuggest.closestByFirstWord(first, ConsoleEngine.nameArray(), 6);
        if (near.size() == 0) {
            near = ConsoleSuggest.closest(typed, names, 6);
        }
        if (near.size() == 0) {
            ConsoleOut.err("没有建议");
            return;
        }
        for (int i = 0; i < near.size(); i++) {
            String name = (String) near.get(i);
            int sp2 = name.indexOf(' ');
            String head = sp2 < 0 ? name : name.substring(0, sp2);
            ConsoleOut.usage(name + "  " + ConsoleEngine.helpOf(name) + "  距离" + ConsoleSuggest.editDistance(first, head));
        }
    }

    private static void runFile(String[] args) {
        if (args == null || args.length == 0) {
            ConsoleOut.usage("run 名称");
            return;
        }
        String name = ConsoleContext.join(args, 0);
        if (name.endsWith(".txt")) {
            name = name.substring(0, name.length() - 4);
        }
        try {
            if (Gdx.files == null) {
                ConsoleOut.err("资源系统未就绪");
                return;
            }
            FileHandle file = Gdx.files.internal("console/" + name + ".txt");
            if (file == null || !file.exists()) {
                ConsoleOut.err("没有脚本 " + name);
                return;
            }
            runScript(file.readString());
        } catch (Throwable t) {
            ConsoleOut.err("脚本失败");
        }
    }

    private static void runSh(String body) {
        if (body == null || body.trim().length() == 0) {
            ConsoleOut.usage("sh 命令;命令");
            return;
        }
        runScript(body.replace(';', '\n'));
    }

    private static void runScript(String text) {
        if (text == null) {
            return;
        }
        String[] lines = text.split("\\n");
        for (int i = 0; i < lines.length; i++) {
            String line = lines[i] == null ? "" : lines[i].trim();
            if (line.length() == 0 || line.startsWith("#")) {
                continue;
            }
            if (line.endsWith("\r")) {
                line = line.substring(0, line.length() - 1).trim();
            }
            ConsoleEngine.execute(line);
        }
    }

    private static int deltaOf(String[] args, int fallback) {
        int value = explicitInt(args);
        return value == Integer.MIN_VALUE ? fallback : value;
    }

    private static int explicitInt(String[] args) {
        if (args == null) {
            return Integer.MIN_VALUE;
        }
        for (int i = 0; i < args.length; i++) {
            Integer n = ConsoleContext.intOrNull(args[i]);
            if (n != null) {
                return n.intValue();
            }
        }
        return Integer.MIN_VALUE;
    }

    private static long longDelta(String[] args, long fallback) {
        Long value = firstLong(args);
        return value == null ? fallback : value.longValue();
    }

    private static Integer firstInt(String[] args) {
        int value = explicitInt(args);
        return value == Integer.MIN_VALUE ? null : Integer.valueOf(value);
    }

    private static Long firstLong(String[] args) {
        if (args == null) {
            return null;
        }
        for (int i = 0; i < args.length; i++) {
            Integer n = ConsoleContext.intOrNull(args[i]);
            if (n != null) {
                return Long.valueOf(n.longValue());
            }
        }
        return null;
    }

    private static int civOrPlayer(String[] args) {
        if (args != null) {
            for (int i = 0; i < args.length; i++) {
                if (!ConsoleContext.isNumber(args[i])) {
                    return ConsoleContext.resolveCiv(args[i]);
                }
            }
        }
        int civ = ConsoleContext.playerCiv();
        if (civ < 0) {
            ConsoleOut.err("没有玩家国家");
        }
        return civ;
    }

    private static int safeMan(Civilization c) {
        try {
            return c.getManPower();
        } catch (Throwable ignored) {
            return 0;
        }
    }
}
