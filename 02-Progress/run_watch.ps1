# ==============================================================================
# Script: run_watch.ps1 (02-Progress)
# Live-reload watch mode untuk Slide Progres Bimbingan Mingguan ITERA
# ==============================================================================
param(
    [string]$Minggu = "01"
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

    Write-Host "`n[GALAT] Typst CLI tidak ditemukan. Pasang via: winget install --id Typst.Typst`n" -ForegroundColor Red
    exit 1
}

$typstExe = Resolve-Typst
$slidesRoot = Split-Path $PSScriptRoot -Parent

# Cari folder minggu yang cocok
$targetFolder = Get-ChildItem -Path $PSScriptRoot -Directory | Where-Object { $_.Name -like "*$Minggu*" } | Select-Object -First 1

if (-not $targetFolder) {
    Write-Warning "Folder dengan kata kunci '$Minggu' tidak ditemukan. Menggunakan template default (00-Template-Mingguan)."
    $targetFolder = Get-Item "$PSScriptRoot\00-Template-Mingguan"
}

$typFile = Get-ChildItem -Path $targetFolder.FullName -Filter *.typ | Select-Object -First 1

if (-not $typFile) {
    Write-Error "Tidak ditemukan berkas .typ di $($targetFolder.FullName)"
    exit 1
}

$pdfFile = [System.IO.Path]::ChangeExtension($typFile.FullName, ".pdf")

Write-Host "=====================================================" -ForegroundColor Cyan
Write-Host " [Live Watch] Laporan Progres Mingguan IF ITERA      " -ForegroundColor Green
Write-Host " Target Folder: $($targetFolder.Name)" -ForegroundColor Yellow
Write-Host " Sumber Typst:  $($typFile.Name)" -ForegroundColor Yellow
Write-Host " Luaran PDF:    $pdfFile" -ForegroundColor Yellow
Write-Host " Typst Engine:  $typstExe" -ForegroundColor Gray
Write-Host " Tekan Ctrl+C untuk berhenti" -ForegroundColor Gray
Write-Host "=====================================================" -ForegroundColor Cyan

& $typstExe watch --root $slidesRoot $typFile.FullName $pdfFile
