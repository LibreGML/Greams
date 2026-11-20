import re, json, sys

raw = open("AOE_unpacked/assets/game/Governments.json", encoding="utf-8").read()

# Show context around a position of the converted string
def relaxed_to_json(t):
    tokens = []
    i = 0
    n = len(t)
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
            while j < n and t[j] not in '{}[],:"\t\r\n ':
                j += 1
            tokens.append(('word', t[i:j]))
            i = j
    res = []
    for k, (kind, val) in enumerate(tokens):
        if kind == 'str':
            res.append(val)
        elif kind == 'sym':
            res.append(val)
        else:
            nxt = tokens[k+1] if k+1 < len(tokens) else None
            if nxt and nxt[0] == 'sym' and nxt[1] == ':':
                res.append('"' + val + '"')
            elif val in ('true', 'false', 'null', 'TRUE', 'FALSE'):
                res.append(val.lower())
            else:
                v = val
                if v.endswith('f') or v.endswith('F'):
                    v = v[:-1]
                res.append(v)
    out = ''.join(res)
    out = re.sub(r',\s*([}\]])', r'\1', out)
    return out

out = relaxed_to_json(raw)
print("converted len", len(out))
pos = 1656
print("CONTEXT:", repr(out[pos-200:pos+200]))
try:
    j = json.loads(out)
    print("OK govs", len(j["Government"]))
except Exception as e:
    print("FAIL at", e)
    # find problem token
    m = re.search(r'line (\d+) column (\d+)', str(e))
    if m:
        # single-line; use char
        pass
