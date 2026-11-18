from pathlib import Path

p = Path(r"C:/Users/17786/Mycode/AOE/tools/console_src/age/of/civilizations2/jakowski/lukasz/ConsoleCmds.java")
t = p.read_text(encoding="utf-8")
if "scan war" in t and "scanWar()" in t:
    print("already present")
    raise SystemExit(0)

t = t.replace(
    'reg("scan gov", "列出可切换政体");',
    'reg("scan gov", "列出可切换政体");\n            reg("scan war", "列出与玩家交战的国家");',
)
t = t.replace(
    '} else if ("scan gov".equals(name)) {\n                scanGov(args);',
    '} else if ("scan gov".equals(name)) {\n                scanGov(args);\n            } else if ("scan war".equals(name)) {\n                scanWar();',
)
method = """
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

"""
marker = "    private static void who() {"
if "scanWar()" not in t:
    t = t.replace(marker, method + marker, 1)
p.write_text(t, encoding="utf-8")
print("ok")
