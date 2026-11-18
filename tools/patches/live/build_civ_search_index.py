# -*- coding: utf-8 -*-
"""Build pinyin/initials index for civilization search."""
from __future__ import print_function
import os
import re
from pypinyin import lazy_pinyin, Style

ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))
ASSETS = os.path.join(ROOT, "AOE_unpacked", "assets", "game")
TAGS = os.path.join(ASSETS, "civilizations", "Age_of_Civilizations")
BUNDLE = os.path.join(ASSETS, "languages", "civilizations", "Bundle.properties")
OUT = os.path.join(ASSETS, "civilizations", "CivSearchIndex.txt")
EDITOR = os.path.join(ASSETS, "civilizations_editor", "Age_of_Civilizations")


def load_bundle(path):
    m = {}
    with open(path, "r", encoding="utf-8", errors="replace") as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith("#") or "=" not in line:
                continue
            k, v = line.split("=", 1)
            m[k.strip()] = v.strip()
    return m


def load_tags(path):
    if not os.path.isfile(path):
        return []
    raw = open(path, "r", encoding="utf-8", errors="replace").read()
    return [t.strip() for t in raw.split(";") if t.strip()]


def py_of(name):
    full = "".join(lazy_pinyin(name, style=Style.NORMAL))
    initials = "".join(lazy_pinyin(name, style=Style.FIRST_LETTER))
    # keep only a-z0-9 for ascii search keys
    full = re.sub(r"[^a-zA-Z0-9]", "", full).lower()
    initials = re.sub(r"[^a-zA-Z0-9]", "", initials).lower()
    return full, initials


def main():
    bundle = load_bundle(BUNDLE)
    tags = load_tags(TAGS)
    tags += load_tags(EDITOR)
    seen = set()
    lines = []
    for tag in tags:
        if tag in seen:
            continue
        seen.add(tag)
        name = bundle.get(tag, tag)
        full, initials = py_of(name)
        # also index ascii-ish tag fragments
        tag_key = re.sub(r"[^a-zA-Z0-9]", "", tag).lower()
        lines.append("%s|%s|%s|%s" % (tag, full, initials, tag_key))
    with open(OUT, "w", encoding="utf-8", newline="\n") as f:
        f.write("\n".join(lines))
        f.write("\n")
    print("wrote", OUT, "entries", len(lines))


if __name__ == "__main__":
    main()
