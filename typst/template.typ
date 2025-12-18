
// Colors
#let color-blue = rgb("#004f90") // Standard blue
#let color-skyblue = rgb("#00BFFF") // Awesome SkyBlue
#let color-darkgray = rgb("#333333")
#let color-gray = rgb("#5D5D5D")
#let color-lightgray = rgb("#999999")
#let color-accent = color-skyblue

// Helper to format date
#let date-range(start, end) = {
  if end != "" {
    start + " - " + end
  } else {
    start
  }
}

// Main CV configuration
#let cv(
  name: "",
  position: "",
  contacts: (),
  body,
) = {
  set page(
    paper: "a4",
    margin: (left: 2cm, right: 2cm, top: 1.5cm, bottom: 2cm),
  )
  set text(font: "Roboto", size: 10pt, fill: color-darkgray)

  // Header
  align(center)[
    #text(size: 24pt, weight: "bold")[#name] \
    #v(5pt)
    #text(size: 10pt, fill: color-accent, weight: "medium")[#upper(position)] \
    #v(5pt)
    #text(size: 9pt)[
      #contacts.join("  |  ")
    ]
  ]

  v(10pt)

  body

  // Footer
  place(
    bottom,
    align(center)[
      #text(size: 8pt, fill: color-lightgray)[
        #name ~~~·~~~ Currículum Vitae
        #h(1fr)
        #context counter(page).display()
      ]
    ],
  )
}

#let cv-section(title) = {
  v(10pt)
  text(size: 14pt, weight: "bold", fill: color-darkgray)[#title]
  v(-5pt)
  line(length: 100%, stroke: 0.5pt + color-lightgray)
  v(5pt)
}

#let cv-entry(
  title: "",
  subtitle: "",
  location: "",
  date: "",
  description: none,
) = {
  grid(
    columns: (1fr, auto),
    gutter: 0pt,
    // Row 1: Title and Location
    align(left)[#text(weight: "bold")[#title]], align(right)[#text(style: "italic", fill: color-accent)[#location]],
    // Row 2: Subtitle and Date
    align(left)[#text(size: 9pt, fill: color-gray)[#subtitle]],
    align(right)[#text(size: 9pt, style: "italic", fill: color-gray)[#date]],
  )

  if description != none {
    v(2pt)
    block(width: 100%)[
      #set text(size: 9pt)
      #description
    ]
  }
  v(6pt)
}

#let cv-skill-entry(
  category: "",
  skills: "",
) = {
  grid(
    columns: (25%, 1fr),
    gutter: 10pt,
    align(right)[#text(weight: "bold")[#category]], align(left)[#skills],
  )
  v(4pt)
}

#let cv-honor-entry(
  position: "",
  committee: "",
  location: "",
  date: "",
) = {
  grid(
    columns: (1fr, auto),
    align(left)[
      #text(weight: "bold")[#position], #text()[#committee]
    ],
    align(right)[
      #text(style: "italic")[#location], #date
    ],
  )
  v(4pt)
}
