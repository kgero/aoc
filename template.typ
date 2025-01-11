#let page_width = 5.5in
#let page_height = 8.5in
#let main_outer_margin = 0.75in
#let main_inner_margin = 1in
#let margin_top = 0.75in
#let margin_bottom = 0.75in
#let image_spread_inner_margin = 0.75in
#let image_spread_outer_margin = 0.6in

#set page(
  width: page_width,
  height: page_height,
  margin: (
    inside: main_inner_margin,
    outside: main_outer_margin,
    top: margin_top,
    bottom: margin_bottom
  ),
  numbering: none,
)

#show heading: it => [
  #set text(weight: "regular")
  #block(
    below: 1.5em,
    smallcaps(it.body))
]

#set text(font: "Libertinus Serif", lang: "en")
#set par(
  spacing: 2em,
  justify: true,
)

// Outer title page
#page[
  #set align(center)
  #set align(horizon)
  = The Anxiety of Conception
  == Katy Ilonka Gero
]

#pagebreak()

// Copyright page
#align(horizon)[
  The Anxiety of Conception \
  Copyright © 2025 Katy Ilonka Gero

  This book is published under a Creative Commons BY-NC-SA 4.0 International License. Under its terms you are invited to share and remix this work, so long as proper attribution is given, it is not used for commercial purposes, and any derivative works are shared under compatible terms. For more information on the license, visit:

  #par(first-line-indent: 2em)[
    creativecommons.org/licenses/by-nc-sa/4.0
  ]

  For further permission requests, please contact the publisher.

  ISBN XXXXXXXXXXXXXXXXXXXX

  Typeset using Typst and the Libertinus Serif font.

  #grid(
    columns: (3em, auto),
    rows:(1.661589587em),
    gutter: 1em,
    image("nothing_to_say_logo.svg", height: 100%),
    [
      nothing-to-say.org \
      editors\@nothing-to-say.org
    ]
  )
]

#let poem(text) = [
  #par(justify:true, text)
]


#let vertical_pause() = box(height: 15em)

// Inner title page
#page[
  #set align(center)
  #set align(horizon)
  #set text(size: 2em)
  #smallcaps([The Anxiety of Conception])
]

#set page(numbering: "i")

#pagebreak(to: "even")

#include("./paratext/dedication.typ")

#pagebreak(to: "even")

#include("./paratext/epigraph.typ")

#set page(numbering: none)

#pagebreak(to: "odd")

#set page(numbering: "1")
#counter(page).update(1)


#page[
  #set align(center)
  #set align(horizon)
  #set text(size: 2em)
  #smallcaps([PART 1])
]

%PART_1%

#page[
  #set align(center)
  #set align(horizon)
  #set text(size: 2em)
  #smallcaps([PART 1])
]

%PART_2%

// #pagebreak()

// #include("./paratext/appendix.typ")

// #pagebreak()

// #include("./paratext/about_the_author.typ")