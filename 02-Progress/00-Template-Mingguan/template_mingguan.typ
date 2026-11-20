// ==============================================================================
// TEMPLAT LAPORAN PROGRES BIMBINGAN MINGGUAN TUGAS AKHIR
// Institut Teknologi Sumatera (ITERA) — Program Studi Teknik Informatika
// ==============================================================================

#import "/templates/itera_theme.typ": *

#show: itera-presentation.with(
  title: "Laporan Progres Mingguan Tugas Akhir",
  subtitle: "Sesi Bimbingan Dosen Pembimbing",
  stage: "Bimbingan Mingguan [Minggu #XX]",
  course-code: "Tugas Akhir (IF25-40033)",
)

// ==============================================================================
// SLIDE 1: COVER IDENTITAS & EXECUTIVE SNAPSHOT
// ==============================================================================
#cover-slide(
  title: [Laporan Progres Mingguan: [Topik Utama Pekan Ini]],
  subtitle: "Sesi Bimbingan Tugas Akhir — Pertemuan #[XX]",
  author: "Andryano",
  nim: "121140205",
  advisor: "Nama Dosen Pembimbing, S.Kom., M.T.",
  specialization: "Sistem Cerdas dan Sains Data Terapan",
  stage: "Progres Bimbingan Mingguan",
  institution: "Program Studi Teknik Informatika, Institut Teknologi Sumatera",
  year: "2026",
  created-date: "YYYY-MM-DD",
  meeting-date: "YYYY-MM-DD",
)

#pagebreak()

// ==============================================================================
// SLIDE 2: MATRIKS STATUS PROGRES (TARGET VS REALISASI)
// ==============================================================================
#slide-header(
  tag: "Bimbingan Mingguan | Status Matrix",
  title: "Matriks Progres Pekan Ini",
  subtitle: "Perbandingan target pekan lalu terhadap realisasi kerja aktual",
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
      • [Capaian 1: e.g. Ekstraksi fitur audio DEAM selesai].
      #v(0.04in)
      • [Capaian 2: Baseline KD-Tree berjalan normal].
      #v(0.04in)
      • [Capaian 3: Draft Bab III metodologi 70%].
    ]
  ),
  
  card-box(
    title: [Sedang Berjalan #status-badge("IN_PROGRESS")],
    fill: rgb("fffbeb"),
    stroke: 0.5pt + clr-warning,
    height: 3.00in,
    body: [
      #set text(size: 13pt)
      • [Aktivitas 1: Evaluasi metrik smoothness].
      #v(0.04in)
      • [Aktivitas 2: Optimasi waktu perutean].
    ]
  ),
  
  card-box(
    title: [Kendala #status-badge("BLOCKED")],
    fill: rgb("fef2f2"),
    stroke: 0.5pt + clr-danger,
    height: 3.00in,
    body: [
      #set text(size: 13pt)
      • [Hambatan: Outlier data 45 detik DEAM].
      #v(0.04in)
      • [Butuh arahan dosen terkait threshold].
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
  tag: "Bimbingan Mingguan | Bukti Teknis",
  title: "Temuan Teknis & Eksperimen",
  subtitle: "Bukti visual dan data hasil eksekusi kode pekan ini",
)

#grid(
  columns: (1.2fr, 1fr),
  gutter: 0.25in,
  [
    #card-box(
      title: "Visualisasi Output",
      fill: clr-bg-card,
      stroke: 0.5pt + clr-border,
      height: 3.00in,
      body: [
        #align(center + horizon)[
          [Sisipkan Plot Grafik dari `../../assets/experiments/`]
        ]
      ]
    )
  ],
  [
    #card-box(
      title: "Analisis & Temuan",
      fill: clr-soft1,
      height: 3.00in,
      body: [
        #set text(size: 13pt)
        • *Hasil Uji:* [Jelaskan temuan angka atau pola grafik].
        #v(0.04in)
        • *Interpretasi:* [Apa arti hasil ini terhadap hipotesis].
        #v(0.04in)
        • *Tindak Lanjut Kode:* [Bagian modul yang dimodifikasi].
      ]
    )
  ]
)

#memory-recall(
  obsidian: "05-Eksperimen/1_TRAIN_BASELINE.md",
  code: "EXPERIMENT/Code/baseline_gaur/src/[nama_file.py]",
  artifact: "Slides/assets/experiments/[nama_plot.png]",
)

#pagebreak()

// ==============================================================================
// SLIDE 4: KENDALA, KONSULTASI, & RENCANA KERJA PEKAN DEPAN
// ==============================================================================
#slide-header(
  tag: "Bimbingan Mingguan | Action Items",
  title: "Konsultasi Kendala & Rencana Kerja",
  subtitle: "Opsi solusi untuk didiskusikan serta target konkret 7 hari ke depan",
)

#grid(
  columns: (1.1fr, 1fr),
  gutter: 0.25in,
  [
    #card-box(
      title: "Poin Diskusi & Usulan Opsi",
      fill: rgb("fffbeb"),
      stroke: 0.5pt + clr-warning,
      height: 3.00in,
      body: [
        #set text(size: 13pt)
        *Kendala:* [Deskripsi masalah teknis].
        #v(0.06in)
        *Opsi Solusi yang Ditawarkan:*
        - *Opsi A:* [Solusi 1 + kelebihan].
        - *Opsi B:* [Solusi 2 + konsekuensi].
        #v(0.06in)
        *Catatan Dosen:* _[Catat langsung masukan dosen di sini]_.
      ]
    )
  ],
  [
    #card-box(
      title: "Rencana Kerja Pekan Depan",
      fill: clr-soft2,
      height: 3.00in,
      body: [
        #set text(size: 13pt)
        1. [Target 1: Selesaikan modul X].
        #v(0.04in)
        2. [Target 2: Running evaluasi metrik Y].
        #v(0.04in)
        3. [Target 3: Revisi Bab III sesuai masukan].
        #v(0.08in)
        *Target Sesi Bimbingan Berikutnya:* \
        `[Hari, Tanggal Bimbingan Mendatang]`
      ]
    )
  ]
)

#memory-recall(
  obsidian: "03-Bimbingan/Bank-Pertanyaan-Dosen.md",
  code: "EXPERIMENT/Code/baseline_gaur/todolist.md",
  artifact: "Action Items Pekan Depan",
)
