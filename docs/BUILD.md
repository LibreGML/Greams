# 构建 / 签名 / 真机安装

## 环境

```powershell
$env:JAVA_HOME = "C:\Program Files\Java\jdk-17"
$env:Path = "$env:JAVA_HOME\bin;C:\Users\17786\AppData\Local\Android\Sdk\platform-tools;$env:LOCALAPPDATA\Android\Sdk\build-tools\36.0.0;" + $env:Path
adb connect 192.168.0.178:5555
```

仓库自带：`apktool.bat` + `apktool_3.0.3.jar`。

## 1. 若改了控制台 / 注入 Java

```powershell
cd C:\Users\17786\Mycode\AOE
powershell -ExecutionPolicy Bypass -File tools\console\build_console_engine.ps1
```

会把 `Console*`、`Calc*`、`BudgetCore`、`CivSelectCache*`、`CivSearchIme*`、`ScenarioExport*` 编译并复制进：

`AOE_unpacked\smali\age\of\civilizations2\jakowski\lukasz\`

## 2. 打包签名安装

```powershell
cd C:\Users\17786\Mycode\AOE
cmd /c "apktool.bat b AOE_unpacked -o build\AOE-unsigned.apk < nul"
$bt = "$env:LOCALAPPDATA\Android\Sdk\build-tools\36.0.0"
& "$bt\zipalign.exe" -p -f 4 build\AOE-unsigned.apk build\AOE-aligned.apk
& "$bt\apksigner.bat" sign `
  --ks build\aoe-debug.keystore --ks-key-alias aoe `
  --ks-pass pass:android --key-pass pass:android `
  --out build\AOE-signed.apk build\AOE-aligned.apk
adb -s 192.168.0.178:5555 install -r build\AOE-signed.apk
adb -s 192.168.0.178:5555 shell am force-stop tz.yx.gemorin
```

### 陷阱

- `apktool.bat` 末尾有 `pause`：用 `< nul` 喂入，或忽略非零退出码，以是否生成 `build\AOE-unsigned.apk` 为准。
- **不要**对 smali 包目录做物理拆包。
- 中间包可删；交付物是 **`build/AOE-signed.apk`**。

## 3. 仅 Python 补丁时

多数 `tools/patches/live/*.py` 直接改 `AOE_unpacked` 内 smali/assets，然后从上面第 2 步开始。

**禁止**重跑 `tools/patches/do-not-rerun/`（见该目录 README）。

## 4. 剧本导入 APK

手机导出目录：`Download/GemorinScenarios/`  
PC：

```powershell
python tools\patches\live\import_exported_scenarios.py
```

会合并到 `AOE_unpacked/assets/map/TZ/scenarios/` 并更新 `Age_of_Civilizations` 索引，再重新打包。
