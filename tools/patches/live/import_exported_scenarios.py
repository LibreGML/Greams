# -*- coding: utf-8 -*-
"""Pull GemorinScenarios from phone Download/ and merge into APK assets.

Usage:
  python tools/patches/live/import_exported_scenarios.py
  python tools/patches/live/import_exported_scenarios.py --from D:\\phone\\GemorinScenarios
  python tools/patches/live/import_exported_scenarios.py --device 192.168.0.178:5555
"""
from __future__ import print_function
import argparse
import os
import shutil
import subprocess
import tempfile

ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))
ASSETS_SCEN = os.path.join(ROOT, "AOE_unpacked", "assets", "map", "TZ", "scenarios")
INDEX = os.path.join(ASSETS_SCEN, "Age_of_Civilizations")
REMOTE = "/sdcard/Download/GemorinScenarios"


def run(cmd):
    print("+", " ".join(cmd))
    return subprocess.check_call(cmd)


def adb_pull(device, dest):
    cmd = ["adb"]
    if device:
        cmd += ["-s", device]
    cmd += ["pull", REMOTE, dest]
    run(cmd)


def read_index(path):
    if not os.path.isfile(path):
        return []
    raw = open(path, "r", encoding="utf-8", errors="replace").read().strip()
    return [t for t in raw.split(";") if t.strip()]


def write_index(path, tags):
    # preserve order, unique
    seen = set()
    out = []
    for t in tags:
        if t and t not in seen:
            seen.add(t)
            out.append(t)
    with open(path, "w", encoding="utf-8", newline="") as f:
        f.write(";".join(out) + ";")


def merge_folder(src_root):
    if not os.path.isdir(src_root):
        raise SystemExit("source missing: " + src_root)
    tags = []
    for name in sorted(os.listdir(src_root)):
        src = os.path.join(src_root, name)
        if not os.path.isdir(src):
            continue
        if name in ("HOW_TO_PACK.txt",):
            continue
        dest = os.path.join(ASSETS_SCEN, name)
        if os.path.isdir(dest):
            shutil.rmtree(dest)
        shutil.copytree(src, dest)
        tags.append(name)
        print("imported", name)
    existing = read_index(INDEX)
    write_index(INDEX, existing + tags)
    print("index now has", len(read_index(INDEX)), "tags")
    print("done ->", ASSETS_SCEN)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--from", dest="src", help="local GemorinScenarios folder")
    ap.add_argument("--device", help="adb device serial")
    args = ap.parse_args()
    if args.src:
        merge_folder(args.src)
        return
    tmp = tempfile.mkdtemp(prefix="gemorin_scen_")
    try:
        adb_pull(args.device, tmp)
        # adb pull may create tmp/GemorinScenarios
        cand = os.path.join(tmp, "GemorinScenarios")
        if os.path.isdir(cand):
            merge_folder(cand)
        else:
            merge_folder(tmp)
    finally:
        shutil.rmtree(tmp, ignore_errors=True)


if __name__ == "__main__":
    main()
