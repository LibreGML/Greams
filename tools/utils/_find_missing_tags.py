# -*- coding: utf-8 -*-
from pathlib import Path

bundle = Path(r"C:\Users\17786\Mycode\AOE\AOE_unpacked\assets\game\languages\civilizations\Bundle.properties").read_text(encoding="utf-8")
keys = {}
for line in bundle.splitlines():
    if "=" in line and not line.strip().startswith("#"):
        k, v = line.split("=", 1)
        keys[k.strip()] = v.strip()

needles = [
    "克罗地亚", "斯洛文尼亚", "斯洛伐克", "波黑", "波斯尼亚", "黑山", "北马其顿", "马其顿",
    "白俄罗斯", "摩尔多瓦", "爱沙尼亚", "拉脱维亚", "立陶宛", "冰岛", "威尔士", "马耳他",
    "安道尔", "列支敦士登", "摩纳哥", "圣马力诺", "塞浦路斯",
    "孟加拉", "乌兹别克", "塔吉克", "吉尔吉斯", "土库曼", "阿塞拜疆", "亚美尼亚", "格鲁吉亚",
    "黎巴嫩", "约旦", "也门", "阿曼", "卡塔尔", "科威特", "巴林", "阿联酋", "阿拉伯联合酋长",
    "缅甸", "柬埔寨", "老挝", "马来西亚", "新加坡", "斯里兰卡", "尼泊尔", "不丹", "台湾",
    "西藏", "满洲", "委内瑞拉", "厄瓜多尔", "玻利维亚", "乌拉圭", "巴拉圭", "危地马拉",
    "洪都拉斯", "尼加拉瓜", "哥斯达黎加", "巴拿马", "海地", "多米尼加", "古巴", "牙买加",
    "新西兰", "斐济", "巴布亚", "汤加", "萨摩亚", "所罗门", "瓦努阿图",
    "文莱", "东帝汶", "马尔代夫", "巴勒斯坦", "叙利亚", "科索沃", "阿尔巴尼亚",
    "白俄", "马耳他", "摩纳哥", "列支",
]
for n in needles:
    hits = [(k, v) for k, v in keys.items() if n in v and "_" not in k]
    print(f"=== {n} ({len(hits)}) ===")
    for k, v in hits[:12]:
        print(f"  {k} = {v}")
