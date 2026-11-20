# 📽️ ITERA Informatics Slide Presentation Engine

Repositori produksi slide presentasi Tugas Akhir Program Studi Teknik Informatika Institut Teknologi Sumatera (ITERA). Dibangun menggunakan **Typst 0.15** dengan tema institusional **Bentuk 1: Penelitian Konvensional**.

---

## Tampilan Slide

<img width="2000" height="1125" alt="image" src="https://github.com/user-attachments/assets/61fa58e8-4045-4b09-a5b9-e4c226392ee5" />


## 📂 Struktur Direktori

```text
Slides/
├── assets/
│   ├── branding/                      # Logo resmi ITERA, Segitiga, Diktisaintek, Ornamen
│   └── experiments/                   # Plot hasil eksperimen yang disinkronkan dari EXPERIMENT/Code
├── templates/
│   └── itera_theme.typ                # Shared Theme (Widescreen 16:9, Georgia font, Navy-Blue ITERA)
├── 00-Drafts/                         # Arsip berkas uji coba lama
├── 01-Sempro/                         # 🎓 Milestone Formal Seminar Proposal (14 Slide Wajib)
│   ├── sempro_slides.typ
│   ├── sempro_slides.pdf
│   └── run_watch.ps1
├── 02-Progress/                       # 📅 Laporan Bimbingan Dosen Mingguan
│   ├── 00-Template-Mingguan/          # Master template 4 slide bimbingan
│   ├── 01-Minggu-01-Baseline-DEAM/    # Sesi bimbingan 1 (Plot DEAM + Matriks Capaian)
│   └── run_watch.ps1
├── scripts/
│   └── sync_experiment_assets.ps1     # Skrip penyalin artefak visual dari EXPERIMENT/Code
├── run_watch.ps1                      # Master launcher live-reload
└── README.md
```

---

## ⚡ Alur Kerja & Perintah Cepat

### 1. Sinkronisasi Grafik Eksperimen
```powershell
powershell -File "scripts\sync_experiment_assets.ps1"
```

### 2. Live-Watch Slide Seminar Proposal
```powershell
.\run_watch.ps1 -Target sempro
```

### 3. Live-Watch Slide Bimbingan Mingguan
```powershell
# Memantau progres minggu 01
.\run_watch.ps1 -Target 01
```

---

## 🔗 Jembatan Memori (Traceability)
Setiap slide Typst dilengkapi blok metadata:
```typst
#memory-recall(
  obsidian: "05-Eksperimen/1_TRAIN_BASELINE.md",
  code: "EXPERIMENT/Code/baseline_gaur/src/stage1_knn.py",
  artifact: "baseline_deam_traversal_plot.png",
)
```
Blok ini menjamin kesiapan mahasiswa saat sesi **Code Walkthrough (Bobot 10% Sidang TA ITERA)** untuk menunjukkan file kode dan catatan ilmiah secara instan.
