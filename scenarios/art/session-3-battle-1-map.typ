// Battlefield map for Session 3 · Battle One, "The Slayer Bait".
//
// Standalone source: it does not import the scenario template, because it is
// rendered to a PNG that is embedded unchanged in both the colour and the
// print edition. The palette below is therefore a hardcoded copy of the
// template's colour edition, which is the one place hardcoded colours belong.
//
// Regenerate with:
//   typst compile --root . --format png --ppi 212 \
//     scenarios/art/session-3-battle-1-map.typ \
//     scenarios/art/session-3-battle-1-map.png

#let gold = rgb("#937530")
#let ember = rgb("#a83d15")
#let iron = rgb("#241c15")
#let ink = rgb("#2a2118")
#let parchment = rgb("#f7f1e3")
#let parchment-dark = rgb("#ece1c8")

#let dwarf-blue = rgb("#6f7f95")
#let dwarf-blue-ink = rgb("#3b4c66")
#let ember-light = rgb("#e3b89c")
#let ground = rgb("#e1d7bb")
#let bait-zone = rgb("#f2e8d2")
#let camp-fill = rgb("#d6b58a")
#let rock = rgb("#9c958b")
#let rock-dark = rgb("#6e6860")
#let hill = rgb("#cdbd8e")
#let scrub = rgb("#a9b98b")
#let ruin = rgb("#b9afa1")

#set page(width: 22cm, height: 17cm, margin: 0pt, fill: parchment)
#set text(font: "Libertinus Serif", fill: ink, size: 8.5pt)

// The table is 72" by 48", drawn to scale. `u` is one table inch on the page;
// every position below is given in table inches from the table's top left.
// The Dwarfs are on the left, the Chaos Dwarf table edge is on the right.
#let u = 19.25cm / 72
#let table-w = 72 * u
#let table-h = 48 * u
#let table-x = (22cm - table-w) / 2
#let table-y = 2.21cm

#let px(i) = table-x + i * u
#let py(i) = table-y + i * u

// The camp sits 24" from the Chaos Dwarf edge, on the table's centre line.
#let camp-x = 48
#let camp-y = 24
#let score-r = 6
#let bait-r = 8

// The Dwarfs deploy within 18" of their edge. Reserves enter from a 36"
// window on each long edge, running from the rocky outcrop to the Chaos
// Dwarf corner, or from the Chaos Dwarf edge itself.
#let dwarf-depth = 18
#let window-l = 36
#let window-r = 72
#let band = 1.3

#let guide-stroke = (paint: gold, thickness: 0.8pt, dash: "dotted")
#let dim-stroke = 1pt + gold

#let dim-label(body) = text(size: 8pt, weight: 700, fill: gold, body)
#let zone-label(fill, body) = text(size: 7.6pt, weight: 700, fill: fill,
  tracking: 0.5pt, smallcaps(body))

// A label centred on a table position, given in table inches.
#let at-centre(cx, cy, body, w: 20) = place(
  dx: px(cx) - w / 2 * u,
  dy: py(cy),
  box(width: w * u, align(center, body)),
)

// A dimension bar between two table points, with its label beside it.
#let dim-h(x0, x1, y, body, above: true) = {
  place(dx: px(x0), dy: py(y), line(length: (x1 - x0) * u, stroke: dim-stroke))
  for x in (x0, x1) {
    place(dx: px(x), dy: py(y) - 0.6 * u,
      line(length: 1.2 * u, angle: 90deg, stroke: dim-stroke))
  }
  at-centre((x0 + x1) / 2, if above { y - 2.0 } else { y + 0.4 }, dim-label(body))
}
#let dim-v(x, y0, y1, body, left: true) = {
  place(dx: px(x), dy: py(y0), line(length: (y1 - y0) * u, angle: 90deg,
    stroke: dim-stroke))
  for y in (y0, y1) {
    place(dx: px(x) - 0.6 * u, dy: py(y), line(length: 1.2 * u,
      stroke: dim-stroke))
  }
  at-centre(if left { x - 2.4 } else { x + 2.4 }, (y0 + y1) / 2 - 0.65,
    dim-label(body), w: 4)
}

// Terrain pieces, each given by its centre in table inches.
#let hill-piece(cx, cy, w, h) = {
  place(dx: px(cx) - w / 2 * u, dy: py(cy) - h / 2 * u,
    ellipse(width: w * u, height: h * u, fill: hill, stroke: 0.7pt + gold))
  place(dx: px(cx) - w / 3.2 * u, dy: py(cy) - h / 3.2 * u,
    ellipse(width: w / 1.6 * u, height: h / 1.6 * u, fill: none,
      stroke: (paint: gold, thickness: 0.6pt, dash: "dotted")))
}
#let rock-piece(cx, cy, w, h) = place(
  dx: px(cx) - w / 2 * u, dy: py(cy) - h / 2 * u,
  polygon(fill: rock, stroke: 0.8pt + rock-dark,
    (0.15 * w * u, 0.05 * h * u), (0.6 * w * u, 0 * u), (w * u, 0.35 * h * u),
    (0.9 * w * u, 0.8 * h * u), (0.55 * w * u, h * u), (0.1 * w * u, 0.75 * h * u),
    (0 * u, 0.35 * h * u)),
)
#let scrub-piece(cx, cy, w, h) = {
  place(dx: px(cx) - w / 2 * u, dy: py(cy) - h / 2 * u,
    ellipse(width: w * u, height: h * u, fill: scrub,
      stroke: (paint: rgb("#6f8352"), thickness: 0.7pt, dash: (array: (2pt, 1.5pt)))))
}
#let ruin-piece(cx, cy, w, h) = place(
  dx: px(cx) - w / 2 * u, dy: py(cy) - h / 2 * u,
  rect(width: w * u, height: h * u, fill: ruin,
    stroke: (paint: rock-dark, thickness: 0.8pt, dash: (array: (3pt, 2pt)))),
)
// Terrain labels: the name, then the footprint and the centre measured from
// the Dwarf edge and the Right Flank edge.
#let terrain(kind, cx, cy, w, h, body, label-above: false, on-dark: false) = {
  kind(cx, cy, w, h)
  at-centre(cx, if label-above { cy - h / 2 - 3.0 } else { cy + h / 2 + 0.4 }, {
    text(size: 6.8pt, fill: if on-dark { parchment } else { ink }, body)
    linebreak()
    text(size: 6.3pt, fill: if on-dark { parchment-dark } else { gold },
      [#w″ × #h″ at #cx″, #cy″])
  }, w: 14)
}

// Title and subtitle.
#place(dy: 0.60cm, box(width: 100%, align(center,
  text(size: 12pt, weight: 700, fill: ink, tracking: 0.55pt,
    smallcaps[The Ogre Camp]),
)))
#place(dy: 1.40cm, box(width: 100%, align(center,
  text(size: 8pt, fill: gold, tracking: 1.0pt,
    smallcaps[72″ × 48″ · drawn to scale · flanks named from the Chaos Dwarf edge]),
)))
#place(dy: 1.78cm, box(width: 100%, align(center,
  text(size: 7pt, fill: gold, tracking: 0.6pt,
    smallcaps[terrain: footprint, then centre from the Dwarf edge and the Right Flank edge]),
)))

// The table.
#place(dx: table-x, dy: table-y, box(
  width: table-w,
  height: table-h,
  fill: ground,
  stroke: 0.7pt + iron,
))

// The Dwarf deployment zone, 18" deep.
#place(dx: px(0), dy: py(0), box(
  width: dwarf-depth * u,
  height: table-h,
  fill: dwarf-blue,
))
#place(dx: px(1.4), dy: py(4.6), zone-label(parchment)[Dwarfs])
#place(dx: px(1.4), dy: py(6.3), text(size: 7.2pt, fill: parchment,
  [within 18″ of this edge]))

// Reserve entry bands: the two flank windows and the Chaos Dwarf edge.
#let entry-band(x, y, w, h) = place(dx: px(x), dy: py(y), box(
  width: w * u, height: h * u, fill: ember-light,
  stroke: (paint: ember, thickness: 1.1pt, dash: (array: (4pt, 2.5pt))),
))
#entry-band(window-l, 0, window-r - window-l, band)
#entry-band(window-l, 48 - band, window-r - window-l, band)
#entry-band(72 - band, 0, band, 48)
#at-centre((window-l + window-r) / 2, band + 0.5,
  zone-label(ember)[Right Flank · 36″, outcrop to corner], w: 36)
#at-centre((window-l + window-r) / 2, 48 - band - 2.3,
  zone-label(ember)[Left Flank · 36″, outcrop to corner], w: 36)
#place(dx: px(72 - band - 2.2), dy: py(camp-y - 9),
  rotate(-90deg, reflow: true, zone-label(ember)[Chaos Dwarf Table Edge]))

// Terrain. Screens on each long edge just west of the flank windows, a
// smaller outcrop east of them, cover for the rear entry, a hill for the
// Dwarf war machines and scrub on the walk in. The lanes from every entry
// window to the camp stay clear.
#terrain(hill-piece, 11, 39, 9, 6, on-dark: true)[hill]
#terrain(scrub-piece, 26, 15, 7, 4)[scrub]
#terrain(scrub-piece, 23, 31, 7, 4)[scrub]
#terrain(rock-piece, 32, 5, 7, 5)[rocky outcrop]
#terrain(rock-piece, 32, 42, 7, 5, label-above: true)[rocky outcrop]
#terrain(rock-piece, 64, 42, 5, 4, label-above: true)[rocks]
#terrain(ruin-piece, 63, 30, 6, 5)[ruins]
#terrain(rock-piece, 64, 9, 6, 5)[rock spur]

// The camp: The Bait's 8" deployment circle, the 6" scoring zone and the
// camp itself around the marked centre.
#place(dx: px(camp-x) - bait-r * u, dy: py(camp-y) - bait-r * u,
  circle(radius: bait-r * u, fill: bait-zone,
    stroke: (paint: gold, thickness: 1pt, dash: (array: (4pt, 2.5pt)))))
#place(dx: px(camp-x) - score-r * u, dy: py(camp-y) - score-r * u,
  circle(radius: score-r * u, fill: none,
    stroke: (paint: ember, thickness: 1.5pt, dash: (array: (6pt, 3.5pt)))))
#place(dx: px(camp-x) - 3.2 * u, dy: py(camp-y) - 3.2 * u,
  circle(radius: 3.2 * u, fill: camp-fill, stroke: 0.7pt + iron))
#place(dx: px(camp-x) - 0.45 * u, dy: py(camp-y) - 0.45 * u,
  circle(radius: 0.45 * u, fill: ember, stroke: 0.5pt + iron))
#at-centre(camp-x, camp-y - 4.9, text(size: 7.5pt, weight: 700, fill: ink,
  [Ogre camp]), w: 8)
#at-centre(camp-x, camp-y + 0.9, text(size: 6.6pt, fill: ink,
  [centre marker]), w: 8)
#place(dx: px(camp-x - bait-r - 0.8) - 18 * u, dy: py(camp-y + 5.4),
  box(width: 18 * u, align(right, text(size: 7.1pt, fill: ember,
    [6″ · Hold the Killing Ground]))))
#place(dx: px(camp-x + 8.6), dy: py(camp-y - 8.2), text(size: 7.1pt, fill: gold,
  [8″ · The Bait and #linebreak() up to 300 pts of Ogres]))

// Walking distances: the Dwarf line to the scoring zone, and each reserve
// entry to the scoring zone.
#dim-h(dwarf-depth, camp-x - score-r, 24, [24″ to the zone])
#dim-v(camp-x, band, camp-y - score-r, [18″])
#dim-v(camp-x, camp-y + score-r, 48 - band, [18″])
#dim-h(camp-x + score-r, 72 - band, 20, [18″], above: false)
#dim-h(0, dwarf-depth, 2, [18″], above: false)

// Legend.
#let swatch(body) = box(baseline: 15%, width: 11pt, height: 8pt, body)
#place(dx: table-x, dy: 15.45cm, box(width: table-w, grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 0.3cm,
  row-gutter: 0.2cm,
  [
    #swatch(rect(width: 100%, height: 100%, fill: dwarf-blue))
    #h(3pt) Dwarf deployment: within 18″ of their short edge.
  ],
  [
    #swatch(rect(width: 100%, height: 100%, fill: ember-light,
      stroke: (paint: ember, thickness: 1.1pt, dash: (array: (3pt, 2pt)))))
    #h(3pt) Reserve entry: the flank windows, 36″ from the rocky outcrop to
    the corner, and the Chaos Dwarf edge.
  ],
  [
    #swatch(align(horizon, circle(radius: 4pt, fill: bait-zone,
      stroke: (paint: ember, thickness: 1pt, dash: (array: (2pt, 1.5pt))))))
    #h(3pt) The camp, 24″ from the Chaos Dwarf edge: The Bait deploys within
    8″, the 6″ ring is the objective.
  ],
)))
