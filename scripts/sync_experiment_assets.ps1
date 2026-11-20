# ==============================================================================
# Script: sync_experiment_assets.ps1
# Tujuan: Menyalin artefak visual & metrik dari EXPERIMENT/Code ke Slides/assets/experiments/
# Menjamin Single Source of Truth antara hasil komputasi lab dan visual slide
# ==============================================================================

$srcDir = Join-Path $PSScriptRoot "..\..\EXPERIMENT\Code\baseline_gaur\experiments\results"
$destDir = Join-Path $PSScriptRoot "..\assets\experiments"

if (-not (Test-Path $destDir)) {
    New-Item -ItemType Directory -Force -Path $destDir | Out-Null
}

Write-Host "=====================================================" -ForegroundColor Cyan
Write-Host " [Sync Assets] Mengambil plot & metrik dari Lab Code " -ForegroundColor Green
Write-Host " Source: $srcDir" -ForegroundColor Gray
Write-Host " Target: $destDir" -ForegroundColor Gray
Write-Host "=====================================================" -ForegroundColor Cyan

if (Test-Path $srcDir) {
    $files = Get-ChildItem -Path $srcDir -Include *.png, *.svg, *.csv, *.json -Recurse
    foreach ($file in $files) {
        $target = Join-Path $destDir $file.Name
        Copy-Item -Path $file.FullName -Destination $target -Force
        Write-Host " [OK] Disinkronkan: $($file.Name)" -ForegroundColor Green
    }
    Write-Host "`nSinkronisasi selesai! Seluruh artefak visual siap dipanggil Typst.`n" -ForegroundColor Yellow
} else {
    Write-Warning "Direktori sumber eksperimen tidak ditemukan: $srcDir"
}
