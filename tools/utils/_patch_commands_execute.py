import re

p = r"C:\Users\17786\Mycode\AOE\AOE_unpacked\smali\age\of\civilizations2\jakowski\lukasz\Commands.smali"
t = open(p, "r", encoding="utf-8", errors="replace").read()
new = """.method protected static final execute(Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_ce_ok

    return-void

    :cond_ce_ok
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->execute(Ljava/lang/String;)V

    return-void
.end method"""
pat = re.compile(
    r"\.method protected static final execute\(Ljava/lang/String;\)V.*?\n\.end method",
    re.S,
)
m = pat.search(t)
if not m:
    raise SystemExit("execute method not found")
print("old span", m.span(), "oldlen", len(m.group(0)))
t2 = pat.sub(new, t, count=1)
open(p, "w", encoding="utf-8", newline="\n").write(t2)
print("done", len(t2))
