// ==============================================================================
// LAPORAN PROGRES BIMBINGAN MINGGUAN #01
// Institut Teknologi Sumatera (ITERA) — Program Studi Teknik Informatika
// ==============================================================================

#import "/templates/itera_theme.typ": *

#show: itera-presentation.with(
  title: "Laporan Progres Mingguan #01",
  subtitle: "Replikasi Baseline Gaur & Karakterisasi DEAM",
  stage: "Bimbingan Mingguan #01",
  course-code: "Tugas Akhir (IF25-40033)",
)

// ==============================================================================
// SLIDE 1: COVER IDENTITAS & EXECUTIVE SNAPSHOT
// ==============================================================================
#cover-slide(
  title: [Validasi Replikasi Baseline Gaur (2020) & Eksplorasi Dataset DEAM],
  subtitle: "Laporan Progres Bimbingan Tugas Akhir — Pertemuan #01",
  author: "Andryano",
  nim: "121140205",
  advisor: "Nama Dosen Pembimbing, S.Kom., M.T.",
  specialization: "Sistem Cerdas dan Sains Data Terapan",
  stage: "Bimbingan Mingguan #01",
  institution: "Program Studi Teknik Informatika, Institut Teknologi Sumatera",
  year: "2026",
  created-date: "20 November 2026",
  meeting-date: "21 November 2026",
)

#pagebreak()

// ==============================================================================
// SLIDE 2: MATRIKS STATUS PROGRES (TARGET VS REALISASI)
// ==============================================================================
#slide-header(
  tag: "Bimbingan Mingguan #01 | Status Matrix",
  title: "Matriks Progres Pekan Ini",
  subtitle: "Capaian kerja riil pada modul eksperimen dan naskah proposal",
)

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 0.22in,
  
  card-box(
    title: [Tercapai #status-badge("DONE")],
    fill: rgb("f0fdf4"),
    stroke: 0.5pt + clr-success,
    height: 3.00in,
    body: [
      #set text(size: 13pt)
      • *Replikasi Baseline:* Pipeline KD-Tree $k$-NN berhasil diuji pada dataset DEAM (1.802 klip lagu).
      #v(0.04in)
      • *Ekstraksi Akustik:* 15 fitur audio diekstraksi via Librosa (`deam_extractor.py`).
      #v(0.04in)
      • *Naskah Bab I–II:* Latar belakang dan tinjauan literatur tersusun rapi di Obsidian.
    ]
  ),
  
  card-box(
    title: [Sedang Berjalan #status-badge("IN_PROGRESS")],
    fill: rgb("fffbeb"),
    stroke: 0.5pt + clr-warning,
    height: 3.00in,
    body: [
      #set text(size: 13pt)
      • *Benchmarking 4 Kuadran:* Menjalankan batch traversal untuk mengukur Smoothness PCC dan Evenness RMSE.
      #v(0.04in)
      • *Diagram Pipeline:* Memfinalisasi visualisasi alur metodologi 2-tahap di Bab III.
    ]
  ),
  
  card-box(
    title: [Temuan Kunci #status-badge("BLOCKED")],
    fill: rgb("fef2f2"),
    stroke: 0.5pt + clr-danger,
    height: 3.00in,
    body: [
      #set text(size: 13pt)
      • *Keterbatasan Baseline:* Titik tengah statis Gaur tidak mencerminkan emosi dinamis per detik lagu.
      #v(0.04in)
      • *Butuh Diskusi:* Justifikasi batas transisi kontinu pada pertemuan hari ini.
    ]
  )
)

#memory-recall(
  obsidian: "03-Bimbingan/Notulensi-Bimbingan.md",
  code: "EXPERIMENT/Code/baseline_gaur/todolist.md",
  artifact: "Target Pekan Lalu vs Realisasi",
)

#pagebreak()

// ==============================================================================
// SLIDE 3: BUKTI TEKNIS & TEMUAN EKSPERIMEN (DEEP DIVE)
// ==============================================================================
#slide-header(
  tag: "Bimbingan Mingguan #01 | Bukti Teknis",
  title: "Temuan Teknis: Baseline DEAM Traversal",
  subtitle: "Visualisasi perutean lintasan emosi kuadran pada dataset DEAM",
)

#grid(
  columns: (1.2fr, 1fr),
  gutter: 0.25in,
  [
    #image("/assets/experiments/baseline_deam_traversal_plot.png", height: 2.90in)
  ],
  [
    #card-box(
      title: "Analisis Hasil Eksperimen",
      fill: clr-soft1,
      height: 2.90in,
      body: [
        #set text(size: 13pt)
        • *Verifikasi Eksekusi:* Pipeline `run_quadrant_experiments.py` berhasil memetakan titik-titik lagu di ruang $V-A$.
        #v(0.04in)
        • *Akar Masalah Nyata:* Garis oranye adalah query alur, titik biru adalah lagu terpilih. Terlihat titik-titik melompat jauh dari garis ideal pada area kuadran berdensitas rendah.
        #v(0.04in)
        • *Solusi Usulan:* Continuous trajectory alignment untuk meminimalkan lompatan transisi antar-ujung lagu.
      ]
    )
  ]
)

#memory-recall(
  obsidian: "05-Eksperimen/1_TRAIN_BASELINE.md",
  code: "EXPERIMENT/Code/baseline_gaur/experiments/run_quadrant_experiments.py",
  artifact: "Slides/assets/experiments/baseline_deam_traversal_plot.png",
)

#pagebreak()

// ==============================================================================
// SLIDE 4: KENDALA, KONSULTASI, & RENCANA KERJA PEKAN DEPAN
// ==============================================================================
#slide-header(
  tag: "Bimbingan Mingguan #01 | Action Items",
  title: "Konsultasi Teknis & Rencana Kerja",
  subtitle: "Opsi solusi untuk didiskusikan serta target konkret 7 hari ke depan",
)

#grid(
  columns: (1.1fr, 1fr),
  gutter: 0.25in,
  [
    #card-box(
      title: "Poin Diskusi dengan Pembimbing",
      fill: rgb("fffbeb"),
      stroke: 0.5pt + clr-warning,
      height: 2.95in,
      body: [
        #set text(size: 13pt)
        *Kendala Teknis:* Anotasi DEAM berdurasi 45 detik (sampling 2 Hz = 90 time-steps). Apakah sampling 2 Hz sudah cukup representatif atau perlu dismoothing?
        #v(0.06in)
        *Opsi Solusi:*
        - *Opsi A:* Gunakan moving average window 1 detik (2 data points).
        - *Opsi B:* Gunakan cubic spline interpolation kontinu.
        #v(0.06in)
        *Catatan Dosen:* _[Tuliskan arahan pembimbing di sini]_.
      ]
    )
  ],
  [
    #card-box(
      title: "Rencana Kerja 7 Hari ke Depan",
      fill: clr-soft2,
      height: 2.95in,
      body: [
        #set text(size: 13pt)
        1. *Modul Trajectory:* Membuat fungsi kalkulasi jarak transisi ujung lagu $d(t_"end"^i, t_"start"^(i+1))$.
        #v(0.04in)
        2. *Benchmarking:* Menuntaskan tabel perbandingan Smoothness & Evenness antara Baseline vs Metode Usulan.
        #v(0.04in)
        3. *Naskah TA:* Menuntaskan draf Bab III Metodologi.
        #v(0.08in)
        *Sesi Bimbingan Berikutnya:* \
        `Kamis, 27 November 2026 (Tentatif)`
      ]
    )
  ]
)

#memory-recall(
  obsidian: "03-Bimbingan/Bank-Pertanyaan-Dosen.md#Q12",
  code: "EXPERIMENT/Code/baseline_gaur/src/stage1_knn.py:50-95",
  artifact: "Action Items Pekan #02",
)
