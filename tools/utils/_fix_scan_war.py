from pathlib import Path

p = Path(r"C:/Users/17786/Mycode/AOE/tools/console_src/age/of/civilizations2/jakowski/lukasz/ConsoleCmds.java")
t = p.read_text(encoding="utf-8")
if "private static void scanWar" in t:
    print("method exists")
    raise SystemExit(0)

method = r'''
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

'''
needle = "    private static void who() {"
if needle not in t:
    raise SystemExit("who() not found")
t = t.replace(needle, method + needle, 1)
p.write_text(t, encoding="utf-8")
print("inserted scanWar")
