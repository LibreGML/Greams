import glob, json, re, sys

# 1) Collect field names from the smali data class
p = glob.glob("AOE_unpacked/smali/age/of/civilizations2/jakowski/lukasz/Ideologies_Manager*Data_Ideologies.smali")[0]
s = open(p, encoding="utf-8", errors="replace").read()
fields = re.findall(r"^\.field\s+(?:public\s+|protected\s+|private\s+)?(?:static\s+)?([^\s:]+)\s+([A-Za-z0-9_]+)", s, re.M)
names = [n for _t, n in fields]
print("file:", p)
print("fields:", len(names))

# 2) Parse relaxed JSON (libgdx style: unquoted keys / values)
raw = open("AOE_unpacked/assets/game/Governments.json", encoding="utf-8").read()

def relaxed_to_json(t):
    out = []
    i = 0
    n = len(t)
    tokens = []
    while i < n:
        c = t[i]
        if c == '"':
            j = i + 1
            while j < n:
                if t[j] == '\\':
                    j += 2
                    continue
                if t[j] == '"':
                    break
                j += 1
            tokens.append(('str', t[i:j+1]))
            i = j + 1
        elif c in '{}[],:':
            tokens.append(('sym', c))
            i += 1
        elif c.isspace():
            i += 1
        else:
            j = i
            while j < n and t[j] not in '{}[],:\"\t\r\n ':
                j += 1
            word = t[i:j]
            tokens.append(('word', word))
            i = j
    # emit
    res = []
    after_colon = False
    for k, (kind, val) in enumerate(tokens):
        if kind == 'str':
            res.append(val)
        elif kind == 'sym':
            res.append(val)
            after_colon = (val == ':')
        else:
            nxt = tokens[k+1] if k+1 < len(tokens) else None
            if nxt and nxt[0] == 'sym' and nxt[1] == ':':
                res.append('"' + val + '"')  # key
            elif val in ('true', 'false', 'null'):
                res.append(val)
            else:
                # numeric with optional f suffix
                v = val
                if v.endswith('f') or v.endswith('F'):
                    v = v[:-1]
                res.append(v)
    # remove trailing commas before } or ]
    out = ''.join(res)
    out = re.sub(r',\s*([}\]])', r'\1', out)
    return out

j = json.loads(relaxed_to_json(raw))
govs = j["Government"]
print("gov count:", len(govs))

all_keys = set()
for g in govs:
    all_keys.update(g.keys())
print("unknown keys in json (not in class):", sorted(all_keys - set(names)))

missing_report = {}
for idx, g in enumerate(govs):
    missing = [n for n in names if n not in g]
    if missing:
        missing_report.setdefault(tuple(missing), []).append((idx, g.get("Name"), g.get("Extra_Tag")))
for k, v in missing_report.items():
    print("MISSING", len(k), "->", list(k)[:12], "affects", len(v), "govs; e.g.", v[:3])

# 3) Check image tags exist
import os
bad = []
for idx, g in enumerate(govs):
    img = g.get("Image")
    tag = g.get("Extra_Tag")
    for cand in [img, tag]:
        if cand:
            path = "AOE_unpacked/assets/UI/H/flags/%s.png" % cand
            if not os.path.exists(path):
                bad.append((idx, g.get("Name"), cand))
                break
print("missing flag images (H/flags):", len(bad), bad[:10])

# 4) numeric sanity
def num(v):
    try:
        return float(str(v).rstrip('fF'))
    except Exception:
        return None
prob = []
for idx, g in enumerate(govs):
    for key in ("INCOME_TAXATION", "INCOME_PRODUCTION", "RECRUITABILITY", "MILITARY_UPKEEP"):
        if key in g:
            v = num(g[key])
            if v is None:
                prob.append((idx, g.get("Name"), key, g[key]))
print("non-numeric values:", prob[:10])
