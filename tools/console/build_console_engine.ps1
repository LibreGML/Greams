# Build the console engine into smali. Stubs are compile-only and are not dexed.
$ErrorActionPreference = "Stop"
# This script lives in tools/console/
$ConsoleRoot = $PSScriptRoot
$Root = (Resolve-Path (Join-Path $ConsoleRoot "..\..")).Path
$Src = Join-Path $ConsoleRoot "console_src"
$Stubs = Join-Path $ConsoleRoot "console_stubs"
$Build = Join-Path $ConsoleRoot "console_build"
$Classes = Join-Path $Build "classes"
$Smali = Join-Path $Build "smali"
$Dex = Join-Path $Build "console.dex"
$Dest = Join-Path $Root "AOE_unpacked\smali\age\of\civilizations2\jakowski\lukasz"

if (-not $env:ANDROID_HOME) {
    $Guess = Join-Path $env:LOCALAPPDATA "Android\Sdk"
    if (Test-Path $Guess) {
        $env:ANDROID_HOME = $Guess
    }
}
$D8 = Join-Path $env:ANDROID_HOME "build-tools\36.0.0\d8.bat"
if (-not (Test-Path $D8)) {
    throw "d8.bat not found: $D8"
}

if (Test-Path $Classes) { Remove-Item $Classes -Recurse -Force }
if (Test-Path $Smali) { Remove-Item $Smali -Recurse -Force }
New-Item -ItemType Directory -Force -Path $Classes, $Smali | Out-Null
if (Test-Path $Dex) { Remove-Item $Dex -Force }

$JavaFiles = @(Get-ChildItem -Path $Src, $Stubs -Recurse -Filter *.java | ForEach-Object { $_.FullName })
if ($JavaFiles.Count -eq 0) { throw "no java sources" }
& javac -encoding UTF-8 -source 8 -target 8 -d $Classes @JavaFiles
if ($LASTEXITCODE -ne 0) { throw "javac failed: $LASTEXITCODE" }

$PackClasses = @(
    Get-ChildItem -Path $Classes -Recurse -Filter "*.class" |
        Where-Object { $_.Name -like "Console*" -or $_.Name -like "Calc*" -or $_.Name -eq "BudgetCore.class" -or $_.Name -like "CivSelectCache*" -or $_.Name -like "CivSearchIme*" -or $_.Name -like "ScenarioExport*" } |
        ForEach-Object { $_.FullName }
)
if ($PackClasses.Count -eq 0) { throw "no Console/Calc/BudgetCore/CivSelect* classes" }
& $D8 --min-api 21 --output $Build @PackClasses
if ($LASTEXITCODE -ne 0) { throw "d8 failed: $LASTEXITCODE" }
$BuiltDex = Join-Path $Build "classes.dex"
if (-not (Test-Path $BuiltDex)) { throw "d8 did not write classes.dex" }
Move-Item -Force $BuiltDex $Dex

$Lib = Join-Path $Root "tools\lib"
$Cp = (@(Get-ChildItem -Path $Lib -Filter *.jar | ForEach-Object { $_.FullName })) -join ";"
if (-not $Cp) { throw "baksmali jars missing in tools\lib" }
& java -cp $Cp org.jf.baksmali.Main disassemble -o $Smali $Dex
if ($LASTEXITCODE -ne 0) { throw "baksmali failed: $LASTEXITCODE" }

$From = Join-Path $Smali "age\of\civilizations2\jakowski\lukasz"
New-Item -ItemType Directory -Force -Path $Dest | Out-Null
$Copied = @(Get-ChildItem -Path $From -Filter "*.smali" | Where-Object {
        $_.Name -like "Console*" -or $_.Name -like "Calc*" -or $_.Name -eq "BudgetCore.smali" -or $_.Name -like "CivSelectCache*" -or $_.Name -like "CivSearchIme*" -or $_.Name -like "ScenarioExport*"
    })
if ($Copied.Count -eq 0) {
    $Copied = @(Get-ChildItem -Path $From -Recurse -Filter "*.smali" | Where-Object {
        $_.Name -like "Console*" -or $_.Name -like "Calc*" -or $_.Name -eq "BudgetCore.smali" -or $_.Name -like "CivSelectCache*" -or $_.Name -like "CivSearchIme*" -or $_.Name -like "ScenarioExport*"
    })
}
if ($Copied.Count -eq 0) { throw "baksmali produced no Console/Calc/BudgetCore/CivSelect* smali" }
foreach ($File in $Copied) {
    Copy-Item -Force $File.FullName (Join-Path $Dest $File.Name)
    Write-Output ("copied " + $File.Name)
}
Write-Output "console.dex $Dex"
Write-Output "smali $Dest"
