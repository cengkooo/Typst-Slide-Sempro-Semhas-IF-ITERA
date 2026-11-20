# ==============================================================================
# Script: run_watch.ps1 (01-Sempro)
# Live-reload watch mode untuk Slide Seminar Proposal ITERA
# ==============================================================================

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

    Write-Host "`n[GALAT] Typst CLI tidak ditemukan. Pasang via: winget install --id Typst.Typst`n" -ForegroundColor Red
    exit 1
}

$typstExe = Resolve-Typst
$slidesRoot = Split-Path $PSScriptRoot -Parent
$src = "$PSScriptRoot\sempro_slides.typ"
$out = "$PSScriptRoot\sempro_slides.pdf"

Write-Host "=====================================================" -ForegroundColor Cyan
Write-Host " [Live Watch] Slide Seminar Proposal IF ITERA (16:9) " -ForegroundColor Green
Write-Host " Root Sandbox: $slidesRoot" -ForegroundColor Gray
Write-Host " Sumber Typst: $src" -ForegroundColor Yellow
Write-Host " Luaran PDF:   $out" -ForegroundColor Yellow
Write-Host " Typst Engine: $typstExe" -ForegroundColor Gray
Write-Host " Tekan Ctrl+C untuk berhenti" -ForegroundColor Gray
Write-Host "=====================================================" -ForegroundColor Cyan

& $typstExe watch --root $slidesRoot $src $out
