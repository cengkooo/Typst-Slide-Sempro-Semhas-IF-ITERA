// ==============================================================================
// TEMPLAT PRESENTASI TUGAS AKHIR — BENTUK 1: PENELITIAN KONVENSIONAL
// Institut Teknologi Sumatera (ITERA) — Program Studi Teknik Informatika
// Modul: itera_theme.typ (Shared Theme & Layout Engine)
// 100% Faithful Reproduction of Templat_Presentasi_TA_Bentuk1_Penelitian_Konvensional.pptx
// ==============================================================================

// ------------------------------------------------------------------------------
// 1. Palet Warna Resmi PPTX ITERA (Exact Hex Matching)
// ------------------------------------------------------------------------------
#let clr-primary      = rgb("4660a3")   // Royal Blue (Judul, Header, Line, Banner)
#let clr-dark         = rgb("344369")   // Deep Slate Blue (Teks Utama, Tag Institusional, Slide 15 BG)
#let clr-navy         = rgb("1f2a4a")   // Dark Navy (Teks Bar 3 pada Slide 2, 6, 13)
#let clr-soft1        = rgb("dce5fb")   // Soft Blue Fill (Card 1 / Bar 1)
#let clr-soft2        = rgb("a3befc")   // Medium Blue Fill (Card 2 / Bar 2)
#let clr-accent       = rgb("7699f1")   // Accent Blue Fill (Card 3 / Bar 3)
#let clr-white        = rgb("ffffff")   // White
#let clr-table-alt    = rgb("f4f7fe")   // Alternating Table Row
#let clr-border       = rgb("cbcbcb")   // Border Line Table
#let clr-border-dark  = rgb("3b4f83")   // Dark Border Accent
#let clr-success      = rgb("15803d")   // Hijau (Done Status)
#let clr-warning      = rgb("b45309")   // Oranye (In-Progress Status)
#let clr-danger       = rgb("b91c1c")   // Merah (Blocked Status)

// State untuk melacak tahapan presentasi pada footer (Pengantar, Seminar Proposal, Sidang Akhir)
#let current-stage = state("current-stage", "Pengantar")

// ------------------------------------------------------------------------------
// 2. Template Setup Master (Widescreen 16:9, Georgia Typography, Header, Footer)
// ------------------------------------------------------------------------------
#let itera-presentation(
  title: "",
  subtitle: "",
  stage: "Pengantar",
  course-code: "Tugas Akhir (IF25-40033)",
  assets-dir: "/assets",
  body,
) = {
  current-stage.update(stage)

  set text(
    font: "Georgia",
    size: 16pt,
    fill: clr-dark,
  )

  set page(
    width: 13.333in,
    height: 7.500in,
    fill: clr-white,
    margin: (top: 1.05in, bottom: 0.75in, left: 0.89in, right: 0.89in),
    header: context {
      let p = counter(page).get().first()
      if p > 1 and p < 15 [
        #grid(
          columns: (1fr, auto),
          align: (left + horizon, right + horizon),
          stack(
            dir: ltr,
            spacing: 0.16in,
            image(assets-dir + "/branding/logo_itera.png", height: 0.56in),
            image(assets-dir + "/branding/lambang_segitiga_itera.png", height: 0.56in),
          ),
          image(assets-dir + "/branding/logo_diktisaintek.png", height: 0.56in),
        )
      ]
    },
    footer: context {
      let p = counter(page).get().first()
      if p > 1 and p < 15 [
        #grid(
          columns: (1fr, 1fr),
          align: (left + horizon, right + horizon),
          text(size: 14pt, fill: clr-primary, font: "Georgia")[#course-code],
          text(size: 14pt, fill: clr-primary, font: "Georgia")[#current-stage.get()],
        )
      ]
    },
  )

  body
}

// ------------------------------------------------------------------------------
// 3. Cover Slide Generator (Sesuai Slide 1 Bentuk 1 ITERA)
// ------------------------------------------------------------------------------
#let cover-slide(
  title: "Templat Presentasi Tugas Akhir",
  subtitle: "Bentuk 1: Penelitian Konvensional",
  research-title: "[Judul penelitian, maks. 16 kata]",
  author-nim: "[Nama mahasiswa, NIM]",
  advisor: "[Nama dan gelar]",
  specialization: "[Bidang keilmuan Teknik Informatika]",
  stage: "[Seminar Proposal atau Sidang Akhir]",
  institution: "Program Studi Teknik Informatika, Institut Teknologi Sumatera",
  year: "[Tahun]",
  assets-dir: "/assets",
) = {
  // Ornamen Segitiga Biru di Sudut Kanan Bawah (pos: x=8.06", y=2.22", w=5.28", h=5.28")
  place(
    top + left,
    dx: 7.17in,
    dy: 1.33in,
    image(assets-dir + "/branding/ornamen_segitiga_itera.png", width: 5.28in, height: 5.28in),
  )

  // Header Logo Cover (pos: y=0.89")
  grid(
    columns: (1fr, auto),
    align: (left + horizon, right + horizon),
    stack(
      dir: ltr,
      spacing: 0.22in,
      image(assets-dir + "/branding/logo_itera.png", height: 1.11in),
      image(assets-dir + "/branding/lambang_segitiga_itera.png", height: 1.11in),
    ),
    image(assets-dir + "/branding/logo_diktisaintek.png", height: 0.83in),
  )

  v(0.22in)

  // Blok Judul & Metadata (width: 7.87in)
  block(width: 7.87in)[
    #text(size: 40pt, weight: "bold", fill: clr-primary, font: "Georgia")[#title]
    #v(0.09in)
    #text(size: 20pt, weight: "regular", fill: clr-dark, font: "Georgia")[#subtitle]
    
    #v(0.19in)
    
    // Metadata Mahasiswa & Penelitian
    #set text(size: 18pt, fill: clr-dark, font: "Georgia")
    #grid(
      columns: (auto, 1fr),
      row-gutter: 0.08in,
      column-gutter: 0.12in,
      [Judul:], [#research-title],
      [Nama dan NIM:], [#author-nim],
      [Pembimbing:], [#advisor],
      [Bidang Kajian:], [#specialization],
      [Tahap:], [#stage],
    )
  ]

  v(1fr)

  text(size: 14pt, fill: clr-primary, font: "Georgia")[
    #institution, #year
  ]
}

// ------------------------------------------------------------------------------
// 4. Slide Header Macro
// ------------------------------------------------------------------------------
#let slide-header(
  tag: "Seminar Proposal | Wajib",
  title: "",
  subtitle: "",
  stage: auto,
) = {
  if stage != auto {
    current-stage.update(stage)
  }
  block(width: 100%, spacing: 0pt)[
    #text(size: 14pt, weight: "bold", fill: clr-dark, font: "Georgia")[#tag] \
    #v(0.01in)
    #text(size: 36pt, weight: "bold", fill: clr-primary, font: "Georgia")[#title] \
    #if subtitle != "" [
      #v(0.01in)
      #text(size: 18pt, weight: "regular", fill: clr-primary, font: "Georgia")[#subtitle]
    ]
  ]
  v(0.16in)
}

// ------------------------------------------------------------------------------
// 5. Horizontal Numbered Bar (Sesuai Slide 2, Slide 6, Slide 13)
// ------------------------------------------------------------------------------
#let horizontal-bar(
  num: "01.",
  title: "",
  body: [],
  fill: clr-soft1,
  fg: clr-dark,
  height: 0.84in,
) = {
  block(
    fill: fill,
    radius: 4pt,
    width: 100%,
    height: height,
    inset: (x: 0.22in, y: 0.09in),
    [
      #grid(
        columns: (0.75in, 1fr),
        gutter: 0.14in,
        align: (top + left, top + left),
        text(size: 20pt, weight: "bold", fill: fg, font: "Georgia")[#num],
        [
          #text(size: 20pt, weight: "bold", fill: fg, font: "Georgia")[#title] \
          #v(0.01in)
          #text(size: 18pt, weight: "regular", fill: fg, font: "Georgia")[#body]
        ]
      )
    ]
  )
}

// ------------------------------------------------------------------------------
// 6. Card Box Component (Sesuai Slide 3, 4, 7, 9, 12, 14)
// ------------------------------------------------------------------------------
#let card-box(
  title: "",
  body: [],
  fill: clr-soft1,
  height: auto,
  fg: clr-dark,
  title-color: clr-dark,
  radius: 4pt,
  inset: 0.20in,
) = {
  block(
    fill: fill,
    radius: radius,
    height: height,
    width: 100%,
    inset: inset,
    [
      #if title != "" [
        #text(size: 20pt, weight: "bold", fill: title-color, font: "Georgia")[#title]
        #v(0.06in)
      ]
      #text(size: 18pt, weight: "regular", fill: fg, font: "Georgia")[#body]
    ]
  )
}

// ------------------------------------------------------------------------------
// 7. Full-Width Problem Banner (Sesuai Slide 4)
// ------------------------------------------------------------------------------
#let problem-banner(text-content) = {
  block(
    fill: clr-primary,
    inset: (x: 0.25in, y: 0.16in),
    radius: 4pt,
    width: 100%,
    [
      #text(size: 20pt, weight: "regular", fill: clr-white, font: "Georgia")[#text-content]
    ]
  )
}

// ------------------------------------------------------------------------------
// 8. Custom Table Generator (Sesuai Slide 5, 8, 10, 11)
// ------------------------------------------------------------------------------
#let itera-table(
  columns: (),
  headers: (),
  rows: (),
) = {
  set text(size: 14pt, font: "Georgia")
  table(
    columns: columns,
    stroke: 0.5pt + clr-border,
    fill: (col, row) => {
      if row == 0 { clr-primary }
      else if calc.odd(row) { clr-table-alt }
      else { clr-white }
    },
    align: (col, row) => left + horizon,
    inset: (x: 0.14in, y: 0.10in),
    table.header(
      ..headers.map(h => text(weight: "bold", fill: clr-white)[#h])
    ),
    ..rows.flatten().map(cell => text(fill: clr-dark)[#cell])
  )
}

// ------------------------------------------------------------------------------
// 9. Closing Slide Generator (Sesuai Slide 15 Bentuk 1 ITERA)
// ------------------------------------------------------------------------------
#let closing-slide(
  title: "Terima Kasih",
  subtitle: "[Pertanyaan dan masukan dipersilakan]",
  contact: "[Email mahasiswa] | [Email pembimbing]",
  assets-dir: "/assets",
) = {
  // Latar Belakang Biru Gelap Penuh (#344369)
  place(
    top + left,
    dx: -0.89in,
    dy: -0.89in,
    rect(width: 13.333in, height: 7.500in, fill: clr-dark)
  )

  // Ornamen Segitiga Putih/Transparan di Sudut Kanan Bawah (pos: x=8.06", y=2.22", w=5.28", h=5.28")
  place(
    top + left,
    dx: 7.17in,
    dy: 1.33in,
    image(assets-dir + "/branding/ornamen_segitiga_putih.png", width: 5.28in, height: 5.28in),
  )

  // Logo Card Diktisaintek di Pojok Kanan Atas (pos: x=10.08", y=0.89", w=2.36", h=0.97")
  place(
    top + right,
    dx: 0in,
    dy: 0in,
    block(
      fill: clr-white,
      radius: 4pt,
      width: 2.36in,
      height: 0.97in,
      align(center + horizon)[
        #image(assets-dir + "/branding/logo_diktisaintek.png", width: 2.08in, height: 0.69in)
      ]
    )
  )

  // Teks Judul & Kontak di Kiri Atas
  block(width: 7.15in)[
    #text(size: 44pt, weight: "bold", fill: clr-white, font: "Georgia")[#title]
    #v(0.14in)
    #text(size: 20pt, weight: "regular", fill: clr-white, font: "Georgia")[#subtitle]
    #v(0.14in)
    #text(size: 18pt, weight: "regular", fill: clr-soft1, font: "Georgia")[#contact]
  ]

  v(1fr)

  // Logo Box ITERA + Segitiga di Pojok Kiri Bawah (pos: x=0.89", y=5.44", w=2.43", h=1.39")
  block(
    fill: clr-white,
    radius: 4pt,
    width: 2.43in,
    height: 1.39in,
    align(center + horizon)[
      #stack(
        dir: ltr,
        spacing: 0.14in,
        image(assets-dir + "/branding/logo_itera.png", height: 1.11in),
        image(assets-dir + "/branding/lambang_segitiga_itera.png", height: 1.11in),
      )
    ]
  )
}

// ------------------------------------------------------------------------------
// 10. Traceability & Memory Recall Tag (Footer Catatan / Walkthrough Ammo)
// ------------------------------------------------------------------------------
#let memory-recall(
  obsidian: "",
  code: "",
  artifact: "",
) = {
  v(0.08in)
  block(
    fill: rgb("f1f5f9"),
    stroke: 0.5pt + clr-border,
    inset: (x: 0.12in, y: 0.05in),
    radius: 4pt,
    width: 100%,
    [
      #set text(size: 10pt, font: "Consolas", fill: clr-dark)
      #grid(
        columns: (auto, 1fr),
        gutter: 0.08in,
        [#text(weight: "bold", fill: clr-primary)[🔗 RECALL:]],
        [
          #if obsidian != "" [Obsidian: *#obsidian* #h(0.15in)]
          #if code != "" [Code: *#code* #h(0.15in)]
          #if artifact != "" [Data: *#artifact*]
        ]
      )
    ]
  )
}
