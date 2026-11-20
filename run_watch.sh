#!/usr/bin/env bash
# ==============================================================================
# Master Watcher Slides: run_watch.sh
# Institut Teknologi Sumatera (ITERA) — Teknik Informatika
# Lintas Platform (Linux / macOS / WSL)
# ==============================================================================
# Penggunaan:
#   ./run_watch.sh                  # Pantau slide Seminar Proposal (default)
#   ./run_watch.sh sempro           # Pantau slide Seminar Proposal
#   ./run_watch.sh 00               # Pantau template progres mingguan
#   ./run_watch.sh 01               # Pantau progres bimbingan minggu 01
# ==============================================================================

set -e

TARGET="${1:-sempro}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if ! command -v typst &> /dev/null; then
    echo "=========================================================="
    echo " [GALAT] Typst CLI tidak ditemukan di sistem Anda!"
    echo " Silakan pasang Typst dengan salah satu cara berikut:"
    echo "   • macOS (Homebrew):  brew install typst"
    echo "   • Linux (Cargo):     cargo install --locked typst-cli"
    echo "   • Arch Linux:        pacman -S typst"
    echo "   • Unduh binary:      https://github.com/typst/typst/releases"
    echo "=========================================================="
    exit 1
fi

if [ "$TARGET" = "sempro" ] || [ "$TARGET" = "1" ] || [ "$TARGET" = "main" ]; then
    SRC="$SCRIPT_DIR/01-Sempro/sempro_slides.typ"
    OUT="$SCRIPT_DIR/01-Sempro/sempro_slides.pdf"

    echo "====================================================="
    echo " [Live Watch] Slide Seminar Proposal IF ITERA (16:9) "
    echo " Root Sandbox: $SCRIPT_DIR"
    echo " Sumber Typst: $SRC"
    echo " Luaran PDF:   $OUT"
    echo " Tekan Ctrl+C untuk berhenti"
    echo "====================================================="

    typst watch --root "$SCRIPT_DIR" "$SRC" "$OUT"
else
    # Cari folder di 02-Progress
    MATCH=$(find "$SCRIPT_DIR/02-Progress" -maxdepth 1 -type d -name "*$TARGET*" | head -n 1)
    if [ -z "$MATCH" ]; then
        echo "Peringatan: Folder dengan kata kunci '$TARGET' tidak ditemukan. Menggunakan template default."
        MATCH="$SCRIPT_DIR/02-Progress/00-Template-Mingguan"
    fi

    TYP_FILE=$(find "$MATCH" -maxdepth 1 -name "*.typ" | head -n 1)
    if [ -z "$TYP_FILE" ]; then
        echo "Error: Berkas .typ tidak ditemukan di $MATCH"
        exit 1
    fi

    PDF_FILE="${TYP_FILE%.typ}.pdf"

    echo "====================================================="
    echo " [Live Watch] Laporan Progres Mingguan IF ITERA      "
    echo " Target Folder: $(basename "$MATCH")"
    echo " Sumber Typst:  $(basename "$TYP_FILE")"
    echo " Luaran PDF:    $PDF_FILE"
    echo " Tekan Ctrl+C untuk berhenti"
    echo "====================================================="

    typst watch --root "$SCRIPT_DIR" "$TYP_FILE" "$PDF_FILE"
fi
