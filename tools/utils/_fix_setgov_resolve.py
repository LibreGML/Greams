from pathlib import Path

p = Path(r"C:/Users/17786/Mycode/AOE/tools/console_src/age/of/civilizations2/jakowski/lukasz/ConsoleCmds.java")
t = p.read_text(encoding="utf-8")

# Replace getIdeologyID(token) usage with a local scan helper call
if "resolveIdeology(" not in t:
    helper = r'''
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

'''
    t = t.replace("    private static void setGov(String[] args) {", helper + "    private static void setGov(String[] args) {", 1)

# replace resolution block that uses getIdeologyID
t2 = t.replace("im.getIdeologyID(token)", "resolveIdeology(token)")
# also remove redundant Integer parse if duplicated - leave as is if setGov still has own parse
p.write_text(t2, encoding="utf-8")
print("patched", t != t2 or "resolveIdeology(" in t2)
