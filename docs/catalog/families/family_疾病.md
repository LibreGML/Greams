# 类族：疾病

顶层 **4**，含内部类合计 **6**。

| 类 | 内部? | KB | 方法 | 说明 | 关键方法 |
|---|---|---:|---:|---|---|
| `Plague_GameData` |  | 66.0 | 14 | 瘟疫/疾病运行时 | `addProvince`, `getDeaths`, `getDurationPercLEFT`, `getDurationPercLEFT`, `getNumOfProvinces_Active`, `getNumOfProvinces_Total` …(+8) |
| `PlagueManager` |  | 59.6 | 10 | 瘟疫/疾病运行时 | `getPlague`, `getPlagueColor`, `getPlagueColor_InGame`, `getPlagueColor_InGame`, `getPlague_InGame`, `getPlaguesSize` …(+4) |
| `PlagueManager$ConfigDiseasesData` | yes | 0.7 | 0 | 内部类 → 外层 `PlagueManager`（瘟疫/疾病运行时）｜本类 `PlagueManager$ConfigDiseasesData` | （无公开业务方法或仅构造） |
| `PlagueManager$Data_Diseases` | yes | 1.4 | 0 | 内部类 → 外层 `PlagueManager`（瘟疫/疾病运行时）｜本类 `PlagueManager$Data_Diseases` | （无公开业务方法或仅构造） |
| `PlagueProvince_GameData` |  | 1.4 | 0 | 瘟疫/疾病运行时 | （无公开业务方法或仅构造） |
| `Plagues_GameData` |  | 6.9 | 3 | 瘟疫/疾病运行时 | `getName`, `getName_Real`, `setName` |
