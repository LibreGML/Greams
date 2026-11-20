import glob, json, os, re, struct

BASE = "AOE_unpacked/assets"

# --- 1. Show the flag-loading region of Menu_InitGame -------------
p = "AOE_unpacked/smali/age/of/civilizations2/jakowski/lukasz/Menu_InitGame.smali"
lines = open(p, encoding="utf-8", errors="replace").read().splitlines()

print("### full loadAssets asset strings ###")
cur = ""
for i, ln in enumerate(lines[549:7958], start=550):
    m = re.search(r'const-string(?:/jumbo)?\s+v\d+,\s+"([^"]+)"', ln)
    if m:
        s = m.group(1)
        if any(k in s for k in ("png", "jpg", "flags", "army", "UI/", "game/")):
            print(i, s)

# --- 2. Does game/flags/ran.png exist? -----------------------------
print("\n### direct file checks ###")
for rel in ["game/flags/ran.png", "game/flags/ran.jpg",
            "game/Governments.json"]:
    print(rel, os.path.exists(os.path.join(BASE, rel)))

# --- 3. Resolution folders and flag counts -------------------------
print("\n### UI resolutions ###")
res = sorted(glob.glob(os.path.join(BASE, "UI", "*")))
for r in res:
    fl = os.path.join(r, "flags")
    n = len(os.listdir(fl)) if os.path.isdir(fl) else -1
    print(os.path.basename(r), "flags:", n)

# --- 4. Parse Governments.json leniently (commas optional) ---------
def parse_relaxed(t):
    tok = []
    i, n = 0, len(t)
    while i < n:
        c = t[i]
        if c == '"':
            j = i + 1
            while j < n:
                if t[j] == "\\":
                    j += 2
                    continue
                if t[j] == '"':
                    break
                j += 1
            tok.append(("str", t[i:j + 1]))
            i = j + 1
        elif c in "{}[],:":
            tok.append(("sym", c))
            i += 1
        elif c.isspace():
            i += 1
        else:
            j = i
            while j < n and t[j] not in '{}[],:"\t\r\n ':
                j += 1
            tok.append(("word", t[i:j]))
            i = j
    # build json-ish text with missing commas repaired
    out = []
    depth = 0
    for k, (kind, val) in enumerate(tok):
        if kind == "str":
            out.append(val)
        elif kind == "sym":
            if val in "}]":
                # drop dangling comma
                while out and out[-1] == ",":
                    out.pop()
            out.append(val)
        else:
            nxt = tok[k + 1] if k + 1 < len(tok) else None
            inside_obj = False
            # crude: a word directly after '{' or ',' at same level is a key
            prev = out[-1] if out else ""
            if nxt and nxt[0] == "sym" and nxt[1] == ":":
                out.append('"' + val + '"')
            elif val in ("true", "false", "null", "TRUE", "FALSE"):
                out.append(val.lower())
            else:
                v = val[:-1] if val[-1:] in ("f", "F") else val
                out.append(v)
                # if the next token starts a new value/element, add comma
                if nxt and (nxt[0] == "str" or (nxt[0] == "word" and not (len(tok) > k + 2 and tok[k + 2][0:2] == ("sym", ":")))):
                    out.append(",")
            # after a closing brace/bracket followed by '{' or '[' add comma
    txt = "".join(out)
    # fix sequences like }{ or ][ or }" or "]{" by inserting commas
    prev = None
    while prev != txt:
        prev = txt
        txt = re.sub(r'([}\]])\s*([{\["])', r"\1,\2", txt)
        txt = re.sub(r'([}\]])\s*(")', r"\1,\2", txt)
        txt = re.sub(r',\s*([}\]])', r"\1", txt)
    return json.loads(txt)

raw = open(os.path.join(BASE, "game/Governments.json"), encoding="utf-8").read()
data = parse_relaxed(raw)
govs = data["Government"]
print("\n### Governments ###")
print("count:", len(govs))

# --- 5. Check each government's flag image -------------------------
resnames = [os.path.basename(x) for x in res]
missing = {}
for i, g in enumerate(govs):
    tag = g.get("Image") or g.get("Extra_Tag") or ""
    if not tag:
        continue
    for rn in resnames:
        fp = os.path.join(BASE, "UI", rn, "flags", tag + ".png")
        if not os.path.exists(fp):
            missing.setdefault(rn, []).append((i, g.get("Name"), tag))
for rn in resnames:
    lst = missing.get(rn, [])
    print(rn, "missing gov flags:", len(lst), lst[:6])
