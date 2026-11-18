# -*- coding: utf-8 -*-
"""Rebrand all public game info to 葛墨林 / Gemorin / TZGML."""
from __future__ import annotations

from pathlib import Path

ROOT = Path(__file__).resolve().parents[3] / "AOE_unpacked"
SMALI = ROOT / "smali" / "age" / "of" / "civilizations2" / "jakowski" / "lukasz"

URL_SITE = "https://libregml.github.io"
URL_GITHUB = "https://github.com/LibreGML"
URL_X = "https://x.com/TZgemolin"
URL_YT = "https://youtube.com/@libregml"
URL_FB = "https://www.facebook.com/profile.php?id=61586116595157"

# Old site mirrors → official site
URL_REPLACEMENTS = {
    "https://ougml.pages.dev/": URL_SITE + "/",
    "https://ougml.pages.dev": URL_SITE,
    "https://tzgml.pages.dev/": URL_SITE + "/",
    "https://tzgml.pages.dev": URL_SITE,
    "https://tzgemolin.pages.dev/": URL_SITE + "/",
    "https://tzgemolin.pages.dev": URL_SITE,
}


def replace_urls_in_text(t: str) -> str:
    # Keep X as-is if already correct
    for old, new in URL_REPLACEMENTS.items():
        t = t.replace(old, new)
    return t


def patch_all_smali_urls() -> int:
    n = 0
    for p in SMALI.rglob("*.smali"):
        t = p.read_text(encoding="utf-8")
        nt = replace_urls_in_text(t)
        if nt != t:
            p.write_text(nt, encoding="utf-8")
            n += 1
    print(f"URL-patched smali files: {n}")
    return n


def patch_cfg() -> None:
    p = SMALI / "CFG.smali"
    t = p.read_text(encoding="utf-8")
    reps = [
        (
            '.field protected static final WWW_LUKASZJAKOWSKI:Ljava/lang/String; = "https://libregml.github.io/"',
            None,  # may already be replaced by URL pass; ensure
        ),
        (
            '.field protected static final sJakowski:Ljava/lang/String; = "\\u0141ukasz Jakowski"',
            '.field protected static final sJakowski:Ljava/lang/String; = "Gemorin"',
        ),
        (
            '.field protected static final sJakowskiGames:Ljava/lang/String; = "\\u0141ukasz Jakowski Games"',
            '.field protected static final sJakowskiGames:Ljava/lang/String; = "Gemorin"',
        ),
        (
            '.field protected static final sJakowskiGames_2:Ljava/lang/String; = "Lukasz Jakowski Games"',
            '.field protected static final sJakowskiGames_2:Ljava/lang/String; = "Gemorin"',
        ),
        (
            '.field protected static final sJakowskiGames_Presents:Ljava/lang/String; = "presents"',
            '.field protected static final sJakowskiGames_Presents:Ljava/lang/String; = "presents"',
        ),
        (
            '.field protected static final sJakowski_2:Ljava/lang/String; = "Lukasz Jakowski"',
            '.field protected static final sJakowski_2:Ljava/lang/String; = "Gemorin"',
        ),
    ]
    # Force WWW field
    t = t.replace(
        '.field protected static final WWW_LUKASZJAKOWSKI:Ljava/lang/String; = "https://ougml.pages.dev/"',
        f'.field protected static final WWW_LUKASZJAKOWSKI:Ljava/lang/String; = "{URL_SITE}/"',
    )
    t = t.replace(
        '.field protected static final WWW_LUKASZJAKOWSKI:Ljava/lang/String; = "https://libregml.github.io/"',
        f'.field protected static final WWW_LUKASZJAKOWSKI:Ljava/lang/String; = "{URL_SITE}/"',
    )
    for old, new in reps:
        if new is None:
            continue
        if old in t:
            t = t.replace(old, new)

    # getLukaszJakowski / Games
    old_g = """.method protected static getLukaszJakowski()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->loadedRobotoFont:Z

    if-eqz v0, :cond_0

    const-string v0, "1.0\\u845b\\u58a8\\u6797"

    return-object v0

    :cond_0
    const-string v0, "TZGML"

    return-object v0
.end method

.method protected static getLukaszJakowskiGames()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->loadedRobotoFont:Z

    if-eqz v0, :cond_0

    const-string v0, "\\u845b\\u58a8\\u6797\\u00a9\\ufe0f\\u7248\\u6743\\u6240\\u6709"

    return-object v0

    :cond_0
    const-string v0, "\\u845b\\u58a8\\u6797\\u00a9\\ufe0f\\u7248\\u6743\\u6240\\u6709"

    return-object v0
.end method
"""
    new_g = """.method protected static getLukaszJakowski()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->loadedRobotoFont:Z

    if-eqz v0, :cond_0

    const-string v0, "\\u845b\\u58a8\\u6797"

    return-object v0

    :cond_0
    const-string v0, "Gemorin"

    return-object v0
.end method

.method protected static getLukaszJakowskiGames()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->loadedRobotoFont:Z

    if-eqz v0, :cond_0

    const-string v0, "Gemorin \\u00b7 TZGML"

    return-object v0

    :cond_0
    const-string v0, "Gemorin \\u00b7 TZGML"

    return-object v0
.end method
"""
    if old_g not in t:
        # try after URL rewrite already happened on surrounding; match methods loosely
        if 'const-string v0, "Gemorin \\u00b7 TZGML"' in t or 'const-string v0, "Gemorin"' in t and "getLukaszJakowskiGames" in t:
            print("CFG getters maybe partial; forcing method bodies")
        # Force via regex-less: find method starts
        import re

        t2, n1 = re.subn(
            r"\.method protected static getLukaszJakowski\(\)Ljava/lang/String;.*?\.end method",
            new_g.split(".method protected static getLukaszJakowskiGames")[0].strip() + "\n",
            t,
            count=1,
            flags=re.S,
        )
        games_body = (
            ".method protected static getLukaszJakowskiGames()Ljava/lang/String;\n"
            + new_g.split(".method protected static getLukaszJakowskiGames()Ljava/lang/String;")[1]
        )
        t3, n2 = re.subn(
            r"\.method protected static getLukaszJakowskiGames\(\)Ljava/lang/String;.*?\.end method",
            games_body.strip(),
            t2,
            count=1,
            flags=re.S,
        )
        if n1 != 1 or n2 != 1:
            raise SystemExit(f"CFG getter replace failed n1={n1} n2={n2}")
        t = t3
    else:
        t = t.replace(old_g, new_g)

    p.write_text(t, encoding="utf-8")
    print("OK CFG")


def patch_about_menu() -> None:
    p = SMALI / "Menu_About.smali"
    t = p.read_text(encoding="utf-8")
    t = replace_urls_in_text(t)

    # Visible website line
    t = t.replace(
        'const-string v9, "https://libregml.github.io/"',
        f'const-string v9, "{URL_SITE}"',
    )
    t = t.replace(
        'const-string v9, "https://tzgemolin.pages.dev/"',
        f'const-string v9, "{URL_SITE}"',
    )

    # Remove "版权所有" line → clean studio credit
    t = t.replace(
        'const-string v3, "\\u845b\\u58a8\\u6797\\u00a9\\ufe0f\\u7248\\u6743\\u6240\\u6709"',
        'const-string v3, "Developed by Gemorin"',
    )

    # Twitter label
    t = t.replace(
        'const-string v9, "Twitter: @TZgemolin"',
        'const-string v9, "X: @TZgemolin"',
    )

    # Old release date → code name
    t = t.replace(
        'const-string v9, "2021\\u5e742\\u67081\\u65e5 "',
        'const-string v9, "TZGML"',
    )

    # Fill empty about rows with socials (13/14/15)
    # Find three consecutive empty const-string v9, "" for $13/$14/$15 carefully
    # $13 first empty after TZGML block
    needle13 = """    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$13;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""
"""
    repl13 = needle13.replace('const-string v9, ""', 'const-string v9, "YouTube: @libregml"')
    if needle13 in t:
        t = t.replace(needle13, repl13, 1)

    needle14 = """    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$14;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""
"""
    repl14 = needle14.replace('const-string v9, ""', 'const-string v9, "Facebook"')
    if needle14 in t:
        t = t.replace(needle14, repl14, 1)

    needle15 = """    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""
"""
    repl15 = needle15.replace('const-string v9, ""', 'const-string v9, "GitHub: LibreGML"')
    if needle15 in t:
        t = t.replace(needle15, repl15, 1)

    # 葛墨林专属 → Website
    t = t.replace(
        'const-string v9, "\\u845b\\u58a8\\u6797\\u4e13\\u5c5e"',
        f'const-string v9, "{URL_SITE}"',
    )

    p.write_text(t, encoding="utf-8")
    print("OK Menu_About labels")

    # Wire click actions for 13/14/15
    for idx, url in [("13", URL_YT), ("14", URL_FB), ("15", URL_GITHUB)]:
        fp = SMALI / f"Menu_About${idx}.smali"
        body = fp.read_text(encoding="utf-8")
        if "actionElement" in body:
            # replace any existing URL
            body = replace_urls_in_text(body)
            if URL_YT in body or URL_FB in body or URL_GITHUB in body or URL_SITE in body:
                # ensure correct URL for this index
                pass
        action = f"""
# virtual methods
.method protected actionElement(I)V
    .locals 0

    const-string p1, "{url}"

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GO_TO_LINK:Ljava/lang/String;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/Dialog;->GO_TO_LINK:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-static {{p1}}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setDialogType(Lage/of/civilizations2/jakowski/lukasz/Dialog;)V

    return-void
.end method
"""
        if ".method protected actionElement(I)V" not in body:
            # insert before getColor or at end before last .end method of class - after constructor
            insert_at = body.find("# virtual methods")
            if insert_at < 0:
                insert_at = body.find(".method protected getColor")
                if insert_at < 0:
                    body = body.rstrip() + "\n" + action + "\n"
                else:
                    body = body[:insert_at] + action + "\n" + body[insert_at:]
            else:
                # already has virtual methods section
                body = body[:insert_at] + "# virtual methods\n" + action + body[insert_at + len("# virtual methods") :]
        else:
            import re

            body, n = re.subn(
                r"\.method protected actionElement\(I\)V.*?\.end method",
                action.strip(),
                body,
                count=1,
                flags=re.S,
            )
            if n != 1:
                raise SystemExit(f"failed rewrite actionElement ${idx}")
        fp.write_text(body, encoding="utf-8")
        print(f"OK Menu_About${idx} action -> {url}")


def patch_about_click_urls() -> None:
    # Map About$1..$8 clicks to correct destinations
    mapping = {
        "Menu_About$1.smali": URL_SITE + "/",
        "Menu_About$2.smali": URL_SITE + "/",
        "Menu_About$3.smali": URL_SITE + "/",
        "Menu_About$4.smali": URL_SITE + "/",
        "Menu_About$5.smali": URL_GITHUB,
        "Menu_About$6.smali": URL_SITE + "/",
        "Menu_About$8.smali": URL_SITE + "/",
        "Menu_About$10.smali": URL_X,
        "Menu_AboutRate$1.smali": URL_SITE + "/",
        "Menu_Main$1.smali": URL_SITE + "/",
        "Menu_Main$4.smali": URL_SITE + "/",
        "Menu_Main$5.smali": URL_YT,
        "Menu_Main$6.smali": URL_FB,
        "Menu_Main$8.smali": URL_GITHUB,
        "Menu_Main$9.smali": URL_SITE + "/",
        "Menu_Editor.smali": URL_SITE + "/",
        "Menu_MapEditor.smali": URL_SITE,
    }
    for name, url in mapping.items():
        p = SMALI / name
        if not p.exists():
            print(f"MISS {name}")
            continue
        t = replace_urls_in_text(p.read_text(encoding="utf-8"))
        # After generic replace, force known GO_TO_LINK / const-string urls in these files
        import re

        # Replace any libregml/github/x/youtube/facebook const-string used as link targets
        # with the mapped url for actionElement / GO_TO_LINK assignments — crude: replace all https strings
        def repl_https(m: re.Match[str]) -> str:
            s = m.group(0)
            if "bing.com" in s:
                return s
            return f'"{url}"'

        # Only replace GO_TO_LINK related const-strings that are our domains
        for old in [
            URL_SITE,
            URL_SITE + "/",
            URL_GITHUB,
            URL_X,
            URL_YT,
            URL_FB,
            "https://libregml.github.io",
            "https://libregml.github.io/",
        ]:
            t = t.replace(f'"{old}"', f'"{url}"')
        p.write_text(t, encoding="utf-8")
    print("OK about/main click URL mapping")


def patch_main_menu_switches() -> None:
    p = SMALI / "Menu_Main.smali"
    t = p.read_text(encoding="utf-8")
    # Explicit social mapping for main menu switches
    pairs = [
        (":pswitch_6", URL_SITE + "/"),
        (":pswitch_7", URL_YT),
        (":pswitch_8", URL_FB),
        (":pswitch_9", URL_GITHUB),
        (":pswitch_a", URL_X),
        (":pswitch_b", URL_SITE + "/"),
    ]
    for label, url in pairs:
        idx = t.find(label)
        if idx < 0:
            raise SystemExit(f"MISS {label}")
        # find next const-string after label
        cs = t.find("const-string v1,", idx)
        end = t.find("\n", cs)
        t = t[:cs] + f'const-string v1, "{url}"' + t[end:]
    p.write_text(t, encoding="utf-8")
    print("OK Menu_Main switches")


def patch_languages() -> None:
    # Chinese main bundle
    bp = ROOT / "assets" / "game" / "languages" / "Bundle.properties"
    t = bp.read_text(encoding="utf-8")
    t = t.replace(
        "About = 葛墨林制作",
        "About = 关于 · 葛墨林",
    )
    t = t.replace(
        "Contact = 联系",
        "Contact = 联系 Gemorin",
    )
    t = t.replace(
        "t0 = 文明时代II是一个简单易学但难以掌握的回合制大战略游戏。",
        "t0 = 荆梦录由葛墨林（Gemorin / TZGML）开发。官网 https://libregml.github.io",
    )
    t = t.replace(
        "AgeofCivilizations		= 原始时代",
        "AgeofCivilizations		= 荆梦录",
    )
    bp.write_text(t, encoding="utf-8")

    # English events
    ep = ROOT / "assets" / "game" / "languages" / "events" / "Bundle.properties"
    et = ep.read_text(encoding="utf-8")
    et = et.replace(
        "AgeofCivilizations		= Age of Civilizations",
        "AgeofCivilizations		= Jingmenglu by Gemorin",
    )
    et = et.replace(
        "t0 = Age of Civilizations II is a turn-based grand strategy wargame that is simple to learn yet hard to master.",
        "t0 = Jingmenglu is developed by Gemorin (TZGML). https://libregml.github.io",
    )
    ep.write_text(et, encoding="utf-8")

    # Ukrainian — remove AoC credit text
    up = ROOT / "assets" / "game" / "languages" / "events" / "Bundle_ua.properties"
    ut = up.read_text(encoding="utf-8")
    ut = ut.replace(
        "AgeofCivilizations = Епоха цивілізацій",
        "AgeofCivilizations = Jingmenglu · Gemorin",
    )
    ut = ut.replace(
        "t0 = Age of Civilizations II - покрокова стратегія, яку легко освоїти, але важко стати майстром.",
        "t0 = Jingmenglu by Gemorin (TZGML). https://libregml.github.io",
    )
    up.write_text(ut, encoding="utf-8")

    print("OK language credits")


def patch_strings_xml() -> None:
    p = ROOT / "res" / "values" / "strings.xml"
    p.write_text(
        '<?xml version="1.0" encoding="utf-8"?>\n'
        "<resources>\n"
        '    <string name="app_name">荆梦录</string>\n'
        '    <string name="developer_name">葛墨林</string>\n'
        '    <string name="developer_code">TZGML</string>\n'
        '    <string name="developer_en">Gemorin</string>\n'
        "</resources>\n",
        encoding="utf-8",
    )
    print("OK strings.xml")


def scrub_lukasz_leftovers() -> None:
    n = 0
    for p in ROOT.rglob("*"):
        if not p.is_file():
            continue
        if p.suffix.lower() not in {".smali", ".properties", ".xml", ".json", ".txt", ".html"}:
            continue
        try:
            t = p.read_text(encoding="utf-8")
        except Exception:
            continue
        nt = t
        for a, b in [
            ("Łukasz Jakowski Games", "Gemorin"),
            ("Łukasz Jakowski", "Gemorin"),
            ("Lukasz Jakowski Games", "Gemorin"),
            ("Lukasz Jakowski", "Gemorin"),
            ("\\u0141ukasz Jakowski Games", "Gemorin"),
            ("\\u0141ukasz Jakowski", "Gemorin"),
        ]:
            nt = nt.replace(a, b)
        if nt != t:
            p.write_text(nt, encoding="utf-8")
            n += 1
    print(f"scrubbed Lukasz leftovers in {n} files")


def main() -> None:
    patch_all_smali_urls()
    patch_cfg()
    patch_about_menu()
    patch_about_click_urls()
    patch_main_menu_switches()
    patch_languages()
    patch_strings_xml()
    scrub_lukasz_leftovers()
    # final URL sweep
    patch_all_smali_urls()
    print("REBRAND DONE")


if __name__ == "__main__":
    main()
