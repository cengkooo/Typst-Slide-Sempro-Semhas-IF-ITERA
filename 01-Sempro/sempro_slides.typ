// ==============================================================================
// TEMPLAT PRESENTASI TUGAS AKHIR — BENTUK 1: PENELITIAN KONVENSIONAL
// Institut Teknologi Sumatera (ITERA) — Program Studi Teknik Informatika
// Berkas: sempro_slides.typ
// 100% Sama Persis dengan Dokumen Templat PPTX Resmi IF ITERA
// (dokumen-template-if/Templat_Presentasi_TA_Bentuk1_Penelitian_Konvensional.pptx)
// ==============================================================================

#import "/templates/itera_theme.typ": *

#show: itera-presentation.with(
  title: "Templat Presentasi Tugas Akhir",
  subtitle: "Bentuk 1: Penelitian Konvensional",
  stage: "Pengantar",
  assets-dir: "/assets",
)

// ==============================================================================
// SLIDE 1: COVER IDENTITAS (Sesuai Slide 1 Bentuk 1 ITERA)
// ==============================================================================
#cover-slide(
  title: "Templat Presentasi Tugas Akhir",
  subtitle: "Bentuk 1: Penelitian Konvensional",
  stage: "[Seminar Proposal atau Sidang Akhir]",
  assets-dir: "/assets",
)

#pagebreak()

// ==============================================================================
// SLIDE 2: CARA MEMAKAI TEMPLAT (Sesuai Slide 2 Bentuk 1 ITERA)
// ==============================================================================
#slide-header(
  tag: "Pengantar",
  title: "Cara Memakai Templat",
  subtitle: "Empat langkah menyiapkan presentasi",
  stage: "Pengantar",
)

#stack(
  spacing: 0.08in,
  horizontal-bar(
    num: "01.",
    title: "Pilih Tahap",
    body: [Hapus slide milik tahap yang tidak Anda presentasikan.],
    fill: clr-soft1,
    fg: clr-dark,
    height: 0.82in,
  ),
  horizontal-bar(
    num: "02.",
    title: "Isi Kurung Siku",
    body: [Ganti [kurung siku] dengan isi Anda; judul maksimal 16 kata.],
    fill: clr-soft2,
    fg: clr-dark,
    height: 0.82in,
  ),
  horizontal-bar(
    num: "03.",
    title: "Patuhi Label",
    body: [Slide berlabel Wajib harus ada; slide Opsional boleh dihapus.],
    fill: clr-accent,
    fg: clr-navy,
    height: 0.82in,
  ),
  horizontal-bar(
    num: "04.",
    title: "Patuhi Waktu",
    body: [Presentasi 10 menit; sidang akhir ditambah demo 5 menit.],
    fill: clr-primary,
    fg: clr-white,
    height: 0.82in,
  ),
)

#pagebreak()

// ==============================================================================
// SLIDE 3: DUA TAHAP PRESENTASI (Sesuai Slide 3 Bentuk 1 ITERA)
// ==============================================================================
#slide-header(
  tag: "Pengantar",
  title: "Dua Tahap Presentasi",
  subtitle: "Waktu, fokus penilaian, dan yang disiapkan",
  stage: "Pengantar",
)

#grid(
  columns: (1fr, 1fr),
  gutter: 0.22in,
  card-box(
    title: "Seminar Proposal",
    fill: clr-soft1,
    height: 2.80in,
    inset: 0.20in,
    body: [
      Waktu: setelah Bab I–III disetujui pembimbing. \
      #v(0.06in)
      Dinilai: proposal 40%, presentasi 30%, bimbingan 30%. \
      #v(0.06in)
      Siapkan: Bab I–III dan Form Kendali Bimbingan.
    ]
  ),
  card-box(
    title: "Sidang Akhir",
    fill: clr-soft2,
    height: 2.80in,
    inset: 0.20in,
    body: [
      Waktu: setelah Bab I–V selesai. \
      #v(0.06in)
      Dinilai: laporan, presentasi, code walkthrough, bimbingan, dan orisinalitas. \
      #v(0.06in)
      Siapkan: similarity ≤25%, Pernyataan AI, repositori.
    ]
  ),
)

#v(0.18in)
#text(size: 14pt, fill: clr-primary, font: "Georgia")[
  Sumber: Pedoman TA Prodi IF, Tabel 3.3, 5.6, 5.7, dan 5.8.
]

#pagebreak()

// ==============================================================================
// SLIDE 4: LATAR BELAKANG (Sesuai Slide 4 Bentuk 1 ITERA)
// ==============================================================================
#slide-header(
  tag: "Seminar Proposal | Wajib",
  title: "Latar Belakang",
  subtitle: "Kesenjangan antara kondisi aktual dan harapan",
  stage: "Seminar Proposal",
)

#grid(
  columns: (1fr, auto, 1fr),
  gutter: 0.20in,
  align: (top, horizon, top),
  card-box(
    title: "Kondisi Saat Ini",
    fill: clr-soft1,
    height: 1.35in,
    body: [
      [Masalah dan data empirisnya]
    ]
  ),
  box(
    width: 0.83in,
    image("/assets/branding/panah_kanan.png", width: 0.83in)
  ),
  card-box(
    title: "Kondisi yang Diharapkan",
    fill: clr-soft2,
    height: 1.35in,
    body: [
      [Kondisi yang ingin dicapai]
    ]
  ),
)

#v(0.20in)

#problem-banner[
  Masalah: [satu kalimat masalah penelitian]
]

#pagebreak()

// ==============================================================================
// SLIDE 5: PENELITIAN TERDAHULU (Sesuai Slide 5 Bentuk 1 ITERA)
// ==============================================================================
#slide-header(
  tag: "Seminar Proposal | Wajib",
  title: "Penelitian Terdahulu",
  subtitle: "Posisi penelitian terhadap state of the art",
  stage: "Seminar Proposal",
)

#itera-table(
  columns: (3.93in, 4.16in, 3.46in),
  headers: ("Peneliti (Tahun)", "Metode dan Data", "Hasil dan Keterbatasan"),
  rows: (
    ("[Peneliti 1]", "[Metode, dataset]", "[Hasil; keterbatasan]"),
    ("[Peneliti 2]", "[Metode, dataset]", "[Hasil; keterbatasan]"),
    ("[Peneliti 3]", "[Metode, dataset]", "[Hasil; keterbatasan]"),
  ),
)

#v(0.26in)
#text(size: 14pt, fill: clr-primary, font: "Georgia")[
  Kesenjangan: [apa yang belum dijawab penelitian terdahulu dan bagaimana penelitian ini mengisinya].
]

#pagebreak()

// ==============================================================================
// SLIDE 6: RUMUSAN MASALAH DAN TUJUAN (Sesuai Slide 6 Bentuk 1 ITERA)
// ==============================================================================
#slide-header(
  tag: "Seminar Proposal | Wajib",
  title: "Rumusan Masalah dan Tujuan",
  subtitle: "Terukur dan saling selaras",
  stage: "Seminar Proposal",
)

#stack(
  spacing: 0.10in,
  horizontal-bar(
    num: "01.",
    title: "Rumusan Masalah",
    body: [[Pertanyaan penelitian yang terukur]],
    fill: clr-soft1,
    fg: clr-dark,
    height: 0.84in,
  ),
  horizontal-bar(
    num: "02.",
    title: "Tujuan",
    body: [[Satu tujuan untuk tiap rumusan masalah, dengan indikator keberhasilan]],
    fill: clr-soft2,
    fg: clr-dark,
    height: 0.84in,
  ),
  horizontal-bar(
    num: "03.",
    title: "Batasan",
    body: [[Dataset, platform, metrik, dan hal yang tidak dicakup]],
    fill: clr-accent,
    fg: clr-navy,
    height: 0.84in,
  ),
)

#pagebreak()

// ==============================================================================
// SLIDE 7: METODOLOGI (Sesuai Slide 7 Bentuk 1 ITERA)
// ==============================================================================
#slide-header(
  tag: "Seminar Proposal | Wajib",
  title: "Metodologi",
  subtitle: "Alur penelitian dari data hingga evaluasi",
  stage: "Seminar Proposal",
)

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 0.17in,
  card-box(
    title: "01. Data",
    fill: clr-soft1,
    height: 1.38in,
    body: [
      [Sumber, jumlah, praproses data]
    ]
  ),
  card-box(
    title: "02. Metode",
    fill: clr-soft2,
    height: 1.38in,
    body: [
      [Model atau sistem dan alasannya]
    ]
  ),
  card-box(
    title: "03. Evaluasi",
    fill: clr-accent,
    fg: clr-navy,
    title-color: clr-navy,
    height: 1.38in,
    body: [
      [Metrik dan skenario uji]
    ]
  ),
)

#v(0.14in)

#card-box(
  title: "Diagram Alur Penelitian",
  fill: clr-soft1,
  height: 1.60in,
  body: [
    [Sisipkan diagram alir penelitian]
  ]
)

#pagebreak()

// ==============================================================================
// SLIDE 8: JADWAL PENELITIAN (Sesuai Slide 8 Bentuk 1 ITERA)
// ==============================================================================
#slide-header(
  tag: "Seminar Proposal | Wajib",
  title: "Jadwal Penelitian",
  subtitle: "Selesai dalam tiga semester aktif",
  stage: "Seminar Proposal",
)

#itera-table(
  columns: (4.16in, 4.62in, 2.77in),
  headers: ("Tahap", "Kegiatan", "Waktu"),
  rows: (
    ("Studi literatur dan data", "[Kegiatan]", "[Bulan, tahun]"),
    ("Perancangan", "[Kegiatan]", "[Bulan, tahun]"),
    ("Implementasi", "[Kegiatan]", "[Bulan, tahun]"),
    ("Pengujian dan analisis", "[Kegiatan]", "[Bulan, tahun]"),
    ("Penulisan dan sidang akhir", "[Kegiatan]", "[Bulan, tahun]"),
  ),
)

#v(0.20in)
#text(size: 14pt, fill: clr-primary, font: "Georgia")[
  Masa berlaku topik 3 semester aktif sejak seminar proposal (Pedoman TA 5.8.1).
]

#pagebreak()

// ==============================================================================
// SLIDE 9: RINGKASAN PENELITIAN (Sesuai Slide 9 Bentuk 1 ITERA)
// ==============================================================================
#slide-header(
  tag: "Sidang Akhir | Wajib",
  title: "Ringkasan Penelitian",
  subtitle: "Masalah, metode, dan hasil dalam satu slide",
  stage: "Sidang Akhir",
)

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 0.17in,
  card-box(
    title: "Masalah",
    fill: clr-soft1,
    height: 2.10in,
    body: [
      [Satu sampai dua kalimat]
    ]
  ),
  card-box(
    title: "Metode",
    fill: clr-soft2,
    height: 2.10in,
    body: [
      [Satu sampai dua kalimat]
    ]
  ),
  card-box(
    title: "Hasil Utama",
    fill: clr-soft1,
    height: 2.10in,
    body: [
      [Angka terpenting]
    ]
  ),
)

#pagebreak()

// ==============================================================================
// SLIDE 10: HASIL EKSPERIMEN (Sesuai Slide 10 Bentuk 1 ITERA)
// ==============================================================================
#slide-header(
  tag: "Sidang Akhir | Wajib",
  title: "Hasil Eksperimen",
  subtitle: "Dibandingkan dengan pembanding",
  stage: "Sidang Akhir",
)

#itera-table(
  columns: (3.00in, 3.23in, 3.46in, 1.85in),
  headers: ("Skenario / Metode", "[Metrik 1]", "[Metrik 2]", "Catatan"),
  rows: (
    ("[Metode usulan]", "[Nilai]", "[Nilai]", "[Catatan]"),
    ("[Pembanding 1]", "[Nilai]", "[Nilai]", "[Catatan]"),
    ("[Pembanding 2]", "[Nilai]", "[Nilai]", "[Catatan]"),
  ),
)

#v(0.20in)
#text(size: 14pt, fill: clr-primary, font: "Georgia")[
  Ganti tabel dengan grafik bila pola lebih jelas terlihat; sebutkan sumber bila diadaptasi.
]

#pagebreak()

// ==============================================================================
// SLIDE 11: JAWABAN RUMUSAN MASALAH (Sesuai Slide 11 Bentuk 1 ITERA)
// ==============================================================================
#slide-header(
  tag: "Sidang Akhir | Wajib",
  title: "Jawaban Rumusan Masalah",
  subtitle: "Tujuan dibandingkan dengan temuan",
  stage: "Sidang Akhir",
)

#itera-table(
  columns: (3.00in, 3.23in, 3.46in, 1.85in),
  headers: ("Rumusan Masalah", "Tujuan", "Temuan", "Status"),
  rows: (
    ("[RM 1]", "[Tujuan 1]", "[Temuan dengan angka]", "[Tercapai, sebagian, atau belum]"),
    ("[RM 2]", "[Tujuan 2]", "[Temuan]", "[Status]"),
    ("[RM 3]", "[Tujuan 3]", "[Temuan]", "[Status]"),
  ),
)

#v(0.20in)
#text(size: 14pt, fill: clr-primary, font: "Georgia")[
  Rumusan masalah dan tujuan sama dengan proposal; perubahan disetujui pembimbing.
]

#pagebreak()

// ==============================================================================
// SLIDE 12: PEMBAHASAN DAN KETERBATASAN (Sesuai Slide 12 Bentuk 1 ITERA)
// ==============================================================================
#slide-header(
  tag: "Sidang Akhir | Wajib",
  title: "Pembahasan dan Keterbatasan",
  subtitle: "Makna temuan, bukan pengulangan tabel",
  stage: "Sidang Akhir",
)

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 0.17in,
  card-box(
    title: "Makna Temuan",
    fill: clr-soft1,
    height: 1.80in,
    body: [
      [Pola dan faktor penyebab hasil]
    ]
  ),
  card-box(
    title: "Banding Terdahulu",
    fill: clr-soft2,
    height: 1.80in,
    body: [
      [Posisi hasil terhadap SOTA]
    ]
  ),
  card-box(
    title: "Keterbatasan",
    fill: clr-soft1,
    height: 1.80in,
    body: [
      [Batas data, metode, cakupan]
    ]
  ),
)

#v(0.18in)
#text(size: 14pt, fill: clr-primary, font: "Georgia")[
  Pembahasan yang baik menjawab rumusan masalah dan mengakui keterbatasan (Pedoman TA 7.4).
]

#pagebreak()

// ==============================================================================
// SLIDE 13: DEMO DAN CODE WALKTHROUGH (Sesuai Slide 13 Bentuk 1 ITERA)
// ==============================================================================
#slide-header(
  tag: "Sidang Akhir | Wajib bila ada perangkat lunak",
  title: "Demo dan Code Walkthrough",
  subtitle: "Bukti pemahaman atas sistem yang dibangun",
  stage: "Sidang Akhir",
)

#stack(
  spacing: 0.10in,
  horizontal-bar(
    num: "01.",
    title: "Skenario Demo",
    body: [[Fitur utama yang diperagakan dalam 5 menit]],
    fill: clr-soft1,
    fg: clr-dark,
    height: 0.84in,
  ),
  horizontal-bar(
    num: "02.",
    title: "Peta Kode",
    body: [[Modul utama dan alur data yang akan ditunjukkan]],
    fill: clr-soft2,
    fg: clr-dark,
    height: 0.84in,
  ),
  horizontal-bar(
    num: "03.",
    title: "Keputusan Teknis",
    body: [[Alasan pemilihan algoritma, framework, dan parameter]],
    fill: clr-accent,
    fg: clr-navy,
    height: 0.84in,
  ),
)

#pagebreak()

// ==============================================================================
// SLIDE 14: KESIMPULAN DAN SARAN (Sesuai Slide 14 Bentuk 1 ITERA)
// ==============================================================================
#slide-header(
  tag: "Sidang Akhir | Wajib",
  title: "Kesimpulan dan Saran",
  subtitle: "Jawaban langsung atas rumusan masalah",
  stage: "Sidang Akhir",
)

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 0.17in,
  card-box(
    title: "Kesimpulan",
    fill: clr-soft1,
    height: 1.80in,
    body: [
      [Satu poin per rumusan masalah]
    ]
  ),
  card-box(
    title: "Kontribusi",
    fill: clr-soft2,
    height: 1.80in,
    body: [
      [Kebaruan penelitian ini]
    ]
  ),
  card-box(
    title: "Saran",
    fill: clr-soft1,
    height: 1.80in,
    body: [
      [Saran spesifik dan konkret]
    ]
  ),
)

#pagebreak()

// ==============================================================================
// SLIDE 15: TERIMA KASIH (Sesuai Slide 15 Bentuk 1 ITERA)
// ==============================================================================
#closing-slide(
  title: "Terima Kasih",
  subtitle: "[Pertanyaan dan masukan dipersilakan]",
  contact: "[Email mahasiswa] | [Email pembimbing]",
  assets-dir: "/assets",
)
