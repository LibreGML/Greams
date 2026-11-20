import zipfile, re, json, sys

APK = "AOE.APK"
with zipfile.ZipFile(APK) as z:
    names = [n for n in z.namelist() if n.endswith("Governments.json")]
    print("entries:", names)
    data = z.read(names[0])

print("orig bytes:", len(data))
print("first 120:", data[:120])
orig = data.decode("utf-8")
cur = open("AOE_unpacked/assets/game/Governments.json", encoding="utf-8").read()

def stats(t, label):
    print("---", label, "---")
    print("len", len(t))
    print("objects { } :", t.count("{"), t.count("}"))
    print("arrays [ ] :", t.count("["), t.count("]"))
    # count patterns of '}\s*{' (missing comma between objects)
    miss = re.findall(r"}\s*\{", t)
    print("'}' directly followed by '{' (missing comma):", len(miss))
    # count '}\s*,' patterns
    print("'}' followed by comma:", len(re.findall(r"}\s*,", t)))

stats(orig, "ORIGINAL (APK)")
stats(cur, "CURRENT (unpacked)")

# print the beginning of the original
print("=== ORIGINAL HEAD ===")
print(orig[:600])
