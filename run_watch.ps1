# ==============================================================================
# Master Watcher Slides: run_watch.ps1
# Pilihan cepat: 1 = Sempro, 2 = Progres Mingguan Terbaru
# ==============================================================================
param(
    [string]$Target = "sempro"
)

$typstPath = "D:\Typst\typst-x86_64-pc-windows-msvc\typst.exe"
if (-not (Test-Path $typstPath)) { $typstPath = "typst" }

if ($Target -eq "sempro") {
    & powershell -File "$PSScriptRoot\01-Sempro\run_watch.ps1"
} else {
    & powershell -File "$PSScriptRoot\02-Progress\run_watch.ps1" -Minggu $Target
}
