# ==============================================================================
# Master Watcher Slides: run_watch.ps1
# Institut Teknologi Sumatera (ITERA) — Teknik Informatika
# ==============================================================================
# Penggunaan:
#   .\run_watch.ps1                 # Pantau slide Seminar Proposal (default)
#   .\run_watch.ps1 -Target sempro  # Pantau slide Seminar Proposal
#   .\run_watch.ps1 -Target 00      # Pantau template progres mingguan
#   .\run_watch.ps1 -Target 01      # Pantau progres bimbingan minggu 01
# ==============================================================================
param(
    [string]$Target = "sempro"
)

function Resolve-Typst {
    $cmd = Get-Command typst -ErrorAction SilentlyContinue
    if ($cmd) { return $cmd.Source }

    $knownPaths = @(
        "$env:LOCALAPPDATA\Programs\Typst\typst.exe",
        "$env:ProgramFiles\Typst\typst.exe",
        "$env:USERPROFILE\.cargo\bin\typst.exe",
        "$env:USERPROFILE\scoop\shims\typst.exe",
        "D:\Typst\typst-x86_64-pc-windows-msvc\typst.exe"
    )

    foreach ($p in $knownPaths) {
        if ($p -and (Test-Path $p)) { return $p }
    }

    Write-Host "`n==========================================================" -ForegroundColor Red
    Write-Host " [GALAT] Typst CLI tidak ditemukan di sistem Anda!" -ForegroundColor Red
    Write-Host " Silakan pasang Typst dengan salah satu perintah berikut:" -ForegroundColor Yellow
    Write-Host "   • Windows (WinGet): winget install --id Typst.Typst" -ForegroundColor Cyan
    Write-Host "   • Windows (Scoop):  scoop install typst" -ForegroundColor Cyan
    Write-Host "   • Unduh manual:    https://github.com/typst/typst/releases" -ForegroundColor Cyan
    Write-Host "==========================================================`n" -ForegroundColor Red
    exit 1
}

$typstExe = Resolve-Typst

if ($Target -eq "sempro" -or $Target -eq "1" -or $Target -eq "main") {
    $src = Join-Path $PSScriptRoot "01-Sempro\sempro_slides.typ"
    $out = Join-Path $PSScriptRoot "01-Sempro\sempro_slides.pdf"

    Write-Host "=====================================================" -ForegroundColor Cyan
    Write-Host " [Live Watch] Slide Seminar Proposal IF ITERA (16:9) " -ForegroundColor Green
    Write-Host " Root Sandbox: $PSScriptRoot" -ForegroundColor Gray
    Write-Host " Sumber Typst: $src" -ForegroundColor Yellow
    Write-Host " Luaran PDF:   $out" -ForegroundColor Yellow
    Write-Host " Typst Engine: $typstExe" -ForegroundColor Gray
    Write-Host " Tekan Ctrl+C untuk berhenti" -ForegroundColor Gray
    Write-Host "=====================================================" -ForegroundColor Cyan

    & $typstExe watch --root $PSScriptRoot $src $out
} else {
    & powershell -File "$PSScriptRoot\02-Progress\run_watch.ps1" -Minggu $Target
}
