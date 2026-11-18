p = r"C:\Users\17786\Mycode\AOE\AOE_unpacked\smali\age\of\civilizations2\jakowski\lukasz\CFG.smali"
t = open(p, "r", encoding="utf-8", errors="replace").read()
old = '''    const-string v0, "# \\u63a7\\u5236\\u53f0\\u5df2\\u6253\\u5f00\\uff0c\\u76f4\\u63a5\\u8f93\\u5165\\u6307\\u4ee4"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Commands;->addMessage(Ljava/lang/String;)V

    :cond_console_ready'''
# Actual file may have real unicode already
needle = "Commands;->addMessage(Ljava/lang/String;)V"
# Find the welcome message block near showKeyboard_Commands
idx = t.find(".method protected static final showKeyboard_Commands()V")
if idx < 0:
    raise SystemExit("showKeyboard_Commands not found")
end = t.find(".end method", idx)
chunk = t[idx:end]
# Replace addMessage welcome with ConsoleEngine.onConsoleOpened
import re
chunk2, n = re.subn(
    r'    const-string v0, "[^"]*"\s*\n\s*invoke-static \{v0\}, Lage/of/civilizations2/jakowski/lukasz/Commands;->addMessage\(Ljava/lang/String;\)V',
    "    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->onConsoleOpened()V",
    chunk,
    count=1,
)
if n != 1:
    print("replace count", n)
    # show snippet
    m = re.search(r"const-string v0.*addMessage", chunk, re.S)
    print(repr(chunk[chunk.find("const-string v0"):chunk.find("const-string v0")+200] if "const-string v0" in chunk else chunk[:500]))
    raise SystemExit("failed")
t2 = t[:idx] + chunk2 + t[end:]
open(p, "w", encoding="utf-8", newline="\n").write(t2)
print("welcome patched")
