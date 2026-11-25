# 📽️ TEMPLAT PRESENTASI TUGAS AKHIR IF ITERA (Typst Engine)

> **Reproduksi Digital 1:1 Resmi** dari `Templat_Presentasi_TA_Bentuk1_Penelitian_Konvensional.pptx`  
> Program Studi Teknik Informatika — Institut Teknologi Sumatera (ITERA)  
> *Mendukung Seminar Proposal (Sempro), Sidang Akhir (TA 2), dan Bimbingan Mingguan.*

[![Typst Version](https://img.shields.io/badge/Typst-0.15%2B-239dad?logo=typst&logoColor=white)](https://typst.app/)
[![ITERA Informatics](https://img.shields.io/badge/Prodi-Teknik%20Informatika%20ITERA-4660a3)](https://if.itera.ac.id/)
[![Aspect Ratio](https://img.shields.io/badge/Aspect%20Ratio-16%3A9%20Widescreen-success)]()
[![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20Linux%20%7C%20macOS-blue)]()
[![Zero Error](https://img.shields.io/badge/Build-Zero--Error%20Ready-brightgreen)]()

---

## 🖼️ Tampilan Slide (Pratinjau Hasil Kompilasi)

Tampilan slide di bawah ini dihasilkan **100% murni oleh Typst** tanpa PowerPoint, dengan mempertahankan kesesuaian visual 1:1 terhadap templat institusional IF ITERA:

<p align="center">
  <img width="2000" height="1125" alt="Tampilan Slide Presentasi IF ITERA" src="https://github.com/user-attachments/assets/61fa58e8-4045-4b09-a5b9-e4c226392ee5" />
</p>

---

## ✨ Keunggulan Templat Typst Ini

1. **100% Sama Persis dengan Template PPT Resmi**: Mengadopsi palet warna institusional (`#4660a3` Royal Blue, `#344369` Slate Dark, `#1f2a4a` Dark Navy, `#dce5fb` Soft Blue), tipografi Georgia, tata letak *card-box*, *horizontal-bar*, tabel terstandar, ornamen segitiga, serta header logo resmi ITERA dan Diktisaintek.
2. **Langsung Jalan Tanpa Galat (*Zero-Error Out of the Box*)**: Dapat di-*clone* dan langsung dikompilasi oleh siapa saja tanpa terikat konfigurasi *path* komputer lokal pembuatnya.
3. **Kompilasi Instan (*Sub-Second Live Reload*)**: Tidak ada lagi proses *render* lambat. Setiap perubahan teks langsung ter-*update* di PDF dalam hitungan milidetik.
4. **Lintas Platform**: Berjalan mulus di **Windows, Linux, macOS, maupun WSL**.
5. **Siap Code Walkthrough (Bobot 10% Sidang TA ITERA)**: Dilengkapi modul metadata `#memory-recall()` untuk menghubungkan slide secara instan ke berkas kode dan catatan penelitian.

---

## 🚀 Panduan Memulai Cepat (Quick Start dalam 2 Menit)

### Langkah 1: Clone Repositori
```bash
git clone https://github.com/cengkooo/Typst-Slide-Sempro-Semhas-IF-ITERA.git
cd Typst-Slide-Sempro-Semhas-IF-ITERA
```

### Langkah 2: Pasang Typst (Bila Belum Terpasang)
Pilih salah satu cara pemasangan sesuai sistem operasi Anda:

* **Windows (WinGet):**
  ```powershell
  winget install --id Typst.Typst
  ```
* **Windows (Scoop):**
  ```powershell
  scoop install typst
  ```
* **macOS (Homebrew):**
  ```bash
  brew install typst
  ```
* **Linux (Cargo / Arch):**
  ```bash
  cargo install --locked typst-cli
  # atau di Arch Linux:
  sudo pacman -S typst
  ```
* **Alternatif Portabel (Semua OS):**  
  Unduh *executable* langsung dari [Rilis Resmi Typst di GitHub](https://github.com/typst/typst/releases).

---

### Langkah 3: Kompilasi / Jalankan Live-Watch

Pilih metode yang paling nyaman bagi Anda:

#### Cara A: Menggunakan CLI Typst Murni (Paling Universal di Semua OS)
```bash
# Kompilasi satu kali menghasilkan PDF
typst compile main.typ

# Mode live-watch (PDF otomatis terbarui setiap kali file disimpan)
typst watch main.typ
```
> **Tips:** Anda juga dapat mengompilasi langsung file sub-folder dengan menyertakan `--root .`:
> ```bash
> typst watch --root . 01-Sempro/sempro_slides.typ 01-Sempro/sempro_slides.pdf
> ```

#### Cara B: Menggunakan PowerShell (Khusus Pengguna Windows)
```powershell
# Memantau Slide Seminar Proposal / Sidang Akhir
.\run_watch.ps1 -Target sempro

# Memantau Slide Bimbingan Mingguan (Minggu 01)
.\run_watch.ps1 -Target 01

# Memantau Template Progres Mingguan
.\run_watch.ps1 -Target 00
```

#### Cara C: Menggunakan Bash (Khusus Linux / macOS / WSL)
```bash
chmod +x run_watch.sh

# Pantau Seminar Proposal
./run_watch.sh sempro

# Pantau Bimbingan Minggu 01
./run_watch.sh 01
```

#### Cara D: Menggunakan VS Code (1-Klik Live Preview)
1. Buka folder repositori ini di VS Code: `code .`
2. Pasang ekstensi resmi: **Tinymist Typst** (tersedia gratis di VS Code Marketplace).
3. Buka berkas `main.typ` atau `01-Sempro/sempro_slides.typ`.
4. Klik tombol **Show Preview** di pojok kanan atas editor. Panel pratinjau slide 16:9 akan langsung terbuka berdampingan dengan kode!

---

## 📂 Struktur Direktori Repositori

```text
Typst-Slide-Sempro-Semhas-IF-ITERA/
├── 📄 main.typ                         # ⚡ Root entrypoint (bisa langsung dikompilasi)
├── 📄 run_watch.ps1                    # 🪟 Live watcher otomatis untuk Windows (PowerShell)
├── 📄 run_watch.sh                     # 🐧 Live watcher otomatis untuk Linux/macOS (Bash)
├── 📄 README.md                        # 📖 Dokumentasi panduan lengkap ini
├── 📄 .gitignore                       # 🛡️ Filter pembersih berkas sementara
│
├── 📂 templates/                       # 🎨 Mesin Layout & Tema Institusional ITERA
│   └── 📄 itera_theme.typ             # Shared Theme (Widescreen 16:9, Georgia, Palet Warna ITERA)
│
├── 📂 assets/                          # 🖼️ Aset Grafis & Branding
│   ├── 📂 branding/                   # Logo ITERA, Segitiga, Diktisaintek, Ornamen Resmi
│   └── 📂 experiments/                # Plot visual & grafik hasil eksperimen lab
│
├── 📂 01-Sempro/                       # 🎓 Milestone Formal: Seminar Proposal & Sidang Akhir
│   ├── 📄 sempro_slides.typ           # Master 15 Slide Lengkap (Wajib & Pilihan)
│   ├── 📄 sempro_slides.pdf           # Pratinjau PDF siap tayang
│   └── 📄 run_watch.ps1               # Watcher lokal folder Sempro
│
├── 📂 02-Progress/                     # 📅 Laporan Bimbingan Dosen Mingguan
│   ├── 📂 00-Template-Mingguan/       # Template master 4 slide bimbingan
│   │   ├── 📄 template_mingguan.typ
│   │   └── 📄 template_mingguan.pdf
│   ├── 📂 01-Minggu-01-Baseline-DEAM/ # Contoh laporan minggu 01 (Plot real + matriks capaian)
│   │   ├── 📄 progres_m01.typ
│   │   └── 📄 progres_m01.pdf
│   └── 📄 run_watch.ps1               # Watcher cerdas navigasi folder mingguan
│
├── 📂 scripts/                         # ⚙️ Skrip utilitas pengembang
│   └── 📄 sync_experiment_assets.ps1  # (Opsional) Sinkronisasi plot dari workspace eksperimen
│
└── 📂 .vscode/                         # 💻 Konfigurasi otomatis ekstensi VS Code
    └── 📄 settings.json               # Konfigurasi Tinymist Typst (auto-export & root path)
```

---

## 📋 Pemetaan 15 Slide Template Resmi IF ITERA

Berkas [`01-Sempro/sempro_slides.typ`](file:///01-Sempro/sempro_slides.typ) mengimplementasikan secara presisi seluruh 15 slide yang ada pada panduan PPTX prodi:

| Nomor Slide | Bagian Presentasi | Status Label | Fokus / Isi Slide |
| :---: | :--- | :---: | :--- |
| **01** | Cover Identitas | *Wajib* | Judul Penelitian (maks. 16 kata), Nama, NIM, Pembimbing, Bidang Kajian, Tahap |
| **02** | Pengantar | *Panduan* | Cara Memakai Templat (4 langkah penyiapan presentasi) |
| **03** | Pengantar | *Panduan* | Dua Tahap Presentasi (Seminar Proposal vs Sidang Akhir) |
| **04** | Seminar Proposal | **Wajib** | Latar Belakang (Kondisi Saat Ini $\rightarrow$ Diharapkan + Problem Statement Banner) |
| **05** | Seminar Proposal | **Wajib** | Penelitian Terdahulu (Tabel SOTA 3 Kolom + Kesenjangan Penelitian) |
| **06** | Seminar Proposal | **Wajib** | Rumusan Masalah, Tujuan, dan Batasan Masalah (3 Bar Horizontal) |
| **07** | Seminar Proposal | **Wajib** | Metodologi Penelitian (3 Card: Data, Metode, Evaluasi + Diagram Alir) |
| **08** | Seminar Proposal | **Wajib** | Jadwal Penelitian (Tabel 5 Tahap s.d. Sidang Akhir dalam 3 Semester Aktif) |
| **09** | Sidang Akhir | **Wajib** | Ringkasan Penelitian (3 Card: Masalah, Metode, dan Hasil Utama) |
| **10** | Sidang Akhir | **Wajib** | Hasil Eksperimen (Tabel Perbandingan Skenario vs Metode Pembanding / Baseline) |
| **11** | Sidang Akhir | **Wajib** | Jawaban Rumusan Masalah (Tabel 4 Kolom: RM, Tujuan, Temuan, Status Capaian) |
| **12** | Sidang Akhir | **Wajib** | Pembahasan dan Keterbatasan (Makna Temuan, Banding SOTA, Batasan Penelitian) |
| **13** | Sidang Akhir | **Wajib\*** | Demo dan Code Walkthrough (\*wajib bila ada perangkat lunak / sistem komputasi) |
| **14** | Sidang Akhir | **Wajib** | Kesimpulan, Kontribusi Kebaruan (*Novelty*), dan Saran Lanjutan |
| **15** | Penutup | *Wajib* | Ucapan Terima Kasih (Latar Dark Navy), Kontak Mahasiswa & Pembimbing |

> **Catatan Penggunaan:**  
> Sesuai instruksi Slide 2 pada template resmi:
> * Untuk **Seminar Proposal**: Cukup presentasikan Slide 1, 4, 5, 6, 7, 8, dan 15 (Waktu tepat 10 menit).
> * Untuk **Sidang Akhir**: Presentasikan Slide 1, 9, 10, 11, 12, 13, 14, dan 15 (Presentasi 10 menit + demo sistem 5 menit).

---

## ✍️ Panduan Kustomisasi Sederhana

Untuk mengisi materi presentasi Anda sendiri, cukup buka [`01-Sempro/sempro_slides.typ`](file:///01-Sempro/sempro_slides.typ) dan ganti teks di dalam tanda `[...]`:

> 💡 PENTING: File Mana yang Harus Diedit?
> * 01-Sempro/sempro_slides.typ (DAPUR KONTEN): 
>  Ini adalah file yang wajib Anda edit untuk mengisi judul, nama, NIM, tabel, dan materi slide Anda.
> * main.typ (PINTU MASUK / SHORTCUT): 
> File ini tidak perlu Anda edit sama sekali. File ini hanya jalan pintas agar perintah typst compile main.typ atau typst watch main.typ bisa dijalankan langsung dari terminal tanpa error.

### 0. Otomatisasi Identitas via `metadata.toml` (Single Source of Truth)
Seluruh data identitas yang berulang (`Nama`, `NIM`, `Judul Penelitian`, `Pembimbing`, `Bidang Kajian`, `Institusi`, `Kode MK`, dan `Tahun`) dikelola terpusat pada [`metadata.toml`](file:///metadata.toml) dan dibaca otomatis oleh `templates/itera_theme.typ` menggunakan fungsi bawaan `toml("/metadata.toml")`.

```toml
[student]
name = "Nama Mahasiswa"
nim = "123140XXX"

[research]
title = "Judul Penelitian Tugas Akhir"
specialization = "Sistem Cerdas dan Sains Data Terapan"
stage = "[Seminar Proposal atau Sidang Akhir]"

[supervision]
advisor = "Nama Dosen Pembimbing, S.Kom., M.Sc."

[institution]
name = "Program Studi Teknik Informatika, Institut Teknologi Sumatera"
course_code = "Tugas Akhir (IF25-40033)"
year = "2026"
```

Dengan konfigurasi ini, templat mingguan di `02-Progress/00-Template-Mingguan/template_mingguan.typ` cukup mengisi variabel pertemuan saja (parameter lain otomatis terisi, atau dapat di-*override* / disembunyikan dengan `none`):
```typst
#cover-slide(
  title: [Laporan Progres Mingguan],
  subtitle: "Laporan Progress Bimbingan Tugas Akhir — Pertemuan #[x] — [Tanggal]",
  specialization: none,
  stage: none,
  meeting-date: none,
)
```

### 1. Mengubah Identitas Cover (Slide 1 — Override Manual)
```typst
#cover-slide(
  title: "Seminar Proposal Tugas Akhir",
  subtitle: "Bentuk 1: Penelitian Konvensional",
  research-title: "Mood-Arc Playlist Generation: Dynamic Mood Trajectory",
  author-nim: "Nama Anda (NIM: 121140XXX)",
  advisor: "Nama Dosen Pembimbing, S.Kom., M.Sc.",
  specialization: "Sistem Cerdas dan Sains Data",
  stage: "Seminar Proposal",
  institution: "Program Studi Teknik Informatika, Institut Teknologi Sumatera",
  year: "2026",
)
```

### 2. Mengubah Bar Horizontal (Slide 6 & Slide 13)
```typst
#horizontal-bar(
  num: "01.",
  title: "Rumusan Masalah 1",
  body: [Bagaimana pengaruh Dynamic Mood Trajectory Alignment terhadap koherensi playlist?],
  fill: clr-soft1,
  fg: clr-dark,
)
```

### 3. Mengubah Tabel State of the Art (Slide 5)
```typst
#itera-table(
  columns: (3.93in, 4.16in, 3.46in),
  headers: ("Peneliti (Tahun)", "Metode dan Data", "Hasil dan Keterbatasan"),
  rows: (
    ("Gaur & Donnelly (2020)", "KNN + Sirkumpleks Russell (DMDD)", "Smooth transition, tapi statis"),
    ("Peneliti Lain (2023)", "Audio Content Feature + BiLSTM", "Akurasi tinggi, lambat dikomputasi"),
  ),
)
```

### 4. Menggunakan Lencana Status di Slide Bimbingan (`02-Progress/`)
Tersedia komponen bawaan `#status-badge()` untuk memperjelas progres mingguan:
```typst
#card-box(
  title: [Ekstraksi Fitur Audio #status-badge("DONE")],
  body: [Berhasil mengekstrak 1.802 file audio MP3 korpus DEAM.],
  fill: clr-soft1,
)
```

---

## ⚙️ Skrip Lanjutan (Khusus Pengembang / Single Source of Truth)

Jika Anda memiliki direktori komputasi model di tingkat *workspace* luar (`EXPERIMENT/Code/...`), Anda dapat memperbarui plot visual secara otomatis ke dalam slide dengan menjalankan:
```powershell
powershell -File "scripts\sync_experiment_assets.ps1"
```
Skrip ini akan mengambil grafik format `.png`, `.svg`, dan metrik `.csv` dari hasil lab Anda dan menyimpannya di `assets/experiments/`, sehingga slide presentasi selalu sinkron dengan data eksperimen terbaru.

---

## 📜 Lisensi & Kepatuhan Akademik

Templat ini dibuat untuk mempermudah seluruh civitas akademika **Program Studi Teknik Informatika Institut Teknologi Sumatera (ITERA)** dalam menyusun presentasi akademik berkualitas tinggi, profesional, dan seragam sesuai ketentuan resmi Program Studi. Silakan gunakan, modifikasi, dan bagikan kepada rekan-rekan mahasiswa.
