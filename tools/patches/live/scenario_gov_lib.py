# -*- coding: utf-8 -*-
"""Scenario civ-tag parse / patch helpers (Java serialization TC_STRING)."""
from __future__ import annotations

import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
SCEN_ROOT = ROOT / "AOE_unpacked/assets/map/TZ/scenarios"
GOV = ROOT / "AOE_unpacked/assets/game/Governments.json"
BUNDLE = ROOT / "AOE_unpacked/assets/game/languages/civilizations/Bundle.properties"
SKIP_SCENARIOS = {"Great_Proletarian_Cultural_Revolution"}


def load_gov_extras() -> dict[str, str]:
    text = GOV.read_text(encoding="utf-8")
    names = re.findall(r'Name:\s*"([^"]*)"', text)
    extras = re.findall(r'Extra_Tag:\s*"([^"]*)"', text)
    return dict(zip(extras, names))


def load_bundle() -> dict[str, str]:
    out = {}
    for line in BUNDLE.read_text(encoding="utf-8").splitlines():
        if "=" in line and not line.strip().startswith("#"):
            k, v = line.split("=", 1)
            out[k.strip()] = v.strip()
    return out


def extract_tc_strings(data: bytes) -> list[tuple[int, int, str]]:
    """Return list of (offset, length_field_value, string)."""
    out = []
    i = 0
    n = len(data)
    while i < n - 3:
        if data[i] == 0x74:  # TC_STRING
            ln = int.from_bytes(data[i + 1 : i + 3], "big")
            if 1 <= ln <= 64 and i + 3 + ln <= n:
                raw = data[i + 3 : i + 3 + ln]
                try:
                    s = raw.decode("utf-8")
                except UnicodeDecodeError:
                    i += 1
                    continue
                out.append((i, ln, s))
                i += 3 + ln
                continue
        i += 1
    return out


def is_civ_tag(s: str, extras: set[str]) -> bool:
    if not s or "jakowski" in s or s.startswith("age."):
        return False
    if any(x in s for x in ("Scenario", "GameData", "ArrayList", "Integer", "Float", "String", "List")):
        return False
    if re.fullmatch(r"\d{10,}[a-z]+", s):  # color pallet tags
        return False
    if not re.fullmatch(r"[A-Za-z0-9_()\u4e00-\u9fff.+-]{1,30}", s):
        return False
    # allow base or base_extra
    if "_" in s:
        base, suf = s.rsplit("_", 1)
        if not base:
            return False
        # suffix either known Extra_Tag or legacy short token
        return True
    return bool(re.fullmatch(r"[A-Za-z][A-Za-z0-9]{0,11}", s)) or bool(
        re.fullmatch(r"[\u4e00-\u9fff].{0,10}", s)
    )


def split_tag(tag: str, extras: set[str]) -> tuple[str, str]:
    """Split civ tag into (real_tag, extra_tag)."""
    if "_" not in tag:
        return tag, ""
    # Try longest matching Extra_Tag first (bgd, ys, zh, ...)
    # Known extras may be multi-char
    best = None
    for e in extras:
        if e and tag.endswith("_" + e):
            if best is None or len(e) > len(best):
                best = e
    if best is not None:
        return tag[: -(len(best) + 1)], best
    # legacy unknown suffix: last segment
    base, suf = tag.rsplit("_", 1)
    return base, suf


def replace_tc_string(data: bytes, offset: int, old_ln: int, new_s: str) -> bytes:
    enc = new_s.encode("utf-8")
    if len(enc) > 0xFFFF:
        raise ValueError("string too long")
    new_ln = len(enc)
    return data[:offset] + bytes([0x74]) + new_ln.to_bytes(2, "big") + enc + data[offset + 3 + old_ln :]


def scenario_dirs() -> list[Path]:
    return sorted(
        [p for p in SCEN_ROOT.iterdir() if p.is_dir() and p.name not in SKIP_SCENARIOS],
        key=lambda p: p.name,
    )


def scenario_main_file(d: Path) -> Path | None:
    main = d / d.name
    if main.is_file():
        return main
    # fallback: file without underscore suffix
    cands = [f for f in d.iterdir() if f.is_file() and f.suffix == "" and "_" not in f.name]
    return cands[0] if cands else None


def scenario_info(d: Path) -> dict:
    info_path = d / f"{d.name}_INFO.json"
    out = {"folder": d.name, "name": d.name, "year": None, "civs_meta": None}
    if info_path.exists():
        try:
            j = json.loads(info_path.read_text(encoding="utf-8"))
            row = j["Data_Scenario_Info"][0]
            out["name"] = row.get("Name", d.name)
            out["year"] = int(row["Year"]) if "Year" in row else None
            out["civs_meta"] = row.get("Civs")
        except Exception:
            pass
    # folder name year fallback
    if out["year"] is None:
        m = re.match(r"^(-?\d{3,4})", d.name)
        if m:
            out["year"] = int(m.group(1))
    return out
