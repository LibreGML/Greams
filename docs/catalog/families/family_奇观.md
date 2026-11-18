# 类族：奇观

顶层 **3**，含内部类合计 **5**。

| 类 | 内部? | KB | 方法 | 说明 | 关键方法 |
|---|---|---:|---:|---|---|
| `Game_Wonders` |  | 5.4 | 2 | 奇观配置与列表 | `readWonders`, `loadWonders` |
| `Game_Wonders$Config` | yes | 0.9 | 1 | 内部类 → 外层 `Game_Wonders`（奇观配置与列表）｜本类 `Game_Wonders$Config` |  …(+1) |
| `Game_Wonders$Wonder` | yes | 0.8 | 0 | 内部类 → 外层 `Game_Wonders`（奇观配置与列表）｜本类 `Game_Wonders$Wonder` | （无公开业务方法或仅构造） |
| `Wonder` |  | 12.0 | 5 | 奇观 | `dispose`, `draw`, `draw`, `draw`, `draw` |
| `Wonders_Manager` |  | 10.0 | 1 | 奇观 | `buildWondersProvinceID` |
