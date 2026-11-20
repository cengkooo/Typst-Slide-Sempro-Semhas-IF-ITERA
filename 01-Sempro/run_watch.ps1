# ==============================================================================
# Script: run_watch.ps1 (01-Sempro)
# Live-reload watch mode untuk Slide Seminar Proposal ITERA
# ==============================================================================

$typstPath = "D:\Typst\typst-x86_64-pc-windows-msvc\typst.exe"
if (-not (Test-Path $typstPath)) { $typstPath = "typst" }

$slidesRoot = Split-Path $PSScriptRoot -Parent
$src = "$PSScriptRoot\sempro_slides.typ"
$out = "$PSScriptRoot\sempro_slides.pdf"

Write-Host "=====================================================" -ForegroundColor Cyan
Write-Host " [Live Watch] Slide Seminar Proposal IF ITERA (16:9) " -ForegroundColor Green
Write-Host " Root Sandbox: $slidesRoot" -ForegroundColor Gray
Write-Host " File Sumber:  $src" -ForegroundColor Yellow
Write-Host " Luaran PDF:   $out" -ForegroundColor Yellow
Write-Host " Tekan Ctrl+C untuk berhenti" -ForegroundColor Gray
Write-Host "=====================================================" -ForegroundColor Cyan

& $typstPath watch --root $slidesRoot $src $out
