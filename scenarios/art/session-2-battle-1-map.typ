// Battlefield map for Session 2 · Battle One, "The Sacred Herd".
//
// Standalone source: it does not import the scenario template, because it is
// rendered to a PNG that is embedded unchanged in both the colour and the
// print edition. The palette below is therefore a hardcoded copy of the
// template's colour edition, which is the one place hardcoded colours belong.
//
// Regenerate with:
//   typst compile --root . --format png --ppi 212 \
//     scenarios/art/session-2-battle-1-map.typ \
//     scenarios/art/session-2-battle-1-map.png

#let gold = rgb("#937530")
#let ember = rgb("#a83d15")
#let iron = rgb("#241c15")
#let ink = rgb("#2a2118")
#let parchment = rgb("#f7f1e3")
#let parchment-dark = rgb("#ece1c8")

#let lizard-blue = rgb("#6386a7")
#let lizard-blue-ink = rgb("#2f5d8a")
#let jungle = rgb("#d7e3ca")
#let beast-great = rgb("#4a7233")
#let beast-lesser = rgb("#7fa86b")

#set page(width: 22cm, height: 17cm, margin: 0pt, fill: parchment)
#set text(font: "Libertinus Serif", fill: ink, size: 8.5pt)

// The table is 72" by 48", drawn to scale. `u` is one table inch on the page;
// every position below is given in table inches from the table's top left.
#let u = 19.25cm / 72
#let table-w = 72 * u
#let table-h = 48 * u
#let table-x = (22cm - table-w) / 2
#let table-y = 2.21cm

#let px(i) = table-x + i * u
#let py(i) = table-y + i * u

// The camp, and every deployment measurement, is 12" in from each table edge.
#let margin-in = 12
#let camp-l = margin-in
#let camp-r = 72 - margin-in
#let camp-t = margin-in
#let camp-b = 48 - margin-in

// The beasts sit on the centre line, the lesser pair 12" either side.
#let centre-x = 36
#let centre-y = 24
#let lesser-offset = 12

#let guide-stroke = (paint: gold, thickness: 0.8pt, dash: "dotted")

#let dim-label(body) = text(size: 8pt, weight: 700, fill: gold, body)

// A label centred on a table position, given in table inches.
#let at-centre(cx, cy, body) = place(
  dx: px(cx) - 10 * u,
  dy: py(cy),
  box(width: 20 * u, align(center, body)),
)

// Title and subtitle.
#place(dy: 0.60cm, box(width: 100%, align(center,
  text(size: 12pt, weight: 700, fill: ink, tracking: 0.55pt,
    smallcaps[The Camp in the Jungle]),
)))
#place(dy: 1.40cm, box(width: 100%, align(center,
  text(size: 8pt, fill: gold, tracking: 1.0pt,
    smallcaps[72″ × 48″ · drawn to scale]),
)))

// The table: a steel blue edge band, the Lizardmen deployment zone, around
// the jungle interior.
#place(dx: table-x, dy: table-y, box(
  width: table-w,
  height: table-h,
  fill: lizard-blue,
  stroke: 0.7pt + iron,
))
#place(dx: px(0.72), dy: py(0.72), box(
  width: (72 - 1.44) * u,
  height: (48 - 1.44) * u,
  fill: jungle,
))
#place(dx: px(2), dy: py(1.4), text(
  size: 8pt, weight: 700, fill: lizard-blue-ink, tracking: 0.5pt,
  smallcaps[Lizardmen: any edge, rear rank touching],
))

// The Chaos Dwarf camp.
#place(dx: px(camp-l), dy: py(camp-t), box(
  width: (camp-r - camp-l) * u,
  height: (camp-b - camp-t) * u,
  fill: parchment-dark,
  stroke: (paint: ember, thickness: 1.7pt, dash: (array: (6pt, 3.5pt))),
))
#place(dx: px(camp-l), dy: py(camp-t + 0.97), box(
  width: (camp-r - camp-l) * u,
  align(center, text(size: 9.7pt, weight: 700, fill: ember, tracking: 1.0pt,
    smallcaps[Chaos Dwarf camp · 48″ × 24″])),
))

// The centre line, which the three beasts stand on.
#place(dx: px(0.72), dy: py(centre-y),
  line(length: (72 - 1.44) * u, stroke: guide-stroke))

// Dotted guides for the 12" margin between each table edge and the camp: a
// pair of witness lines per side, with the measurement between them.
#for x in (centre-x - 6, centre-x + 6) {
  place(dx: px(x), dy: py(0), line(length: camp-t * u, angle: 90deg,
    stroke: guide-stroke))
  place(dx: px(x), dy: py(camp-b), line(length: camp-t * u, angle: 90deg,
    stroke: guide-stroke))
}
#for y in (centre-y - 6, centre-y + 6) {
  place(dx: px(0), dy: py(y), line(length: camp-l * u, stroke: guide-stroke))
  place(dx: px(camp-r), dy: py(y), line(length: camp-l * u,
    stroke: guide-stroke))
}
#at-centre(centre-x - 2.5, 5.0, dim-label[12″])
#at-centre(centre-x - 2.5, 41.0, dim-label[12″])
#at-centre(4.05, centre-y - 0.65, dim-label[12″])
#at-centre(72 - 4.05, centre-y - 0.65, dim-label[12″])

// The measurement bar over the three beasts.
#place(dx: px(centre-x - lesser-offset), dy: py(centre-y - 4),
  line(length: 2 * lesser-offset * u, stroke: 1pt + gold))
#at-centre(centre-x - lesser-offset / 2, centre-y - 5.2, dim-label[12″])
#at-centre(centre-x + lesser-offset / 2, centre-y - 5.2, dim-label[12″])

// The beasts themselves.
#let beast(cx, r, fill, name, note) = {
  place(dx: px(cx) - r * u, dy: py(centre-y) - r * u,
    circle(radius: r * u, fill: fill, stroke: 0.7pt + iron))
  at-centre(cx, centre-y + r + 0.4, {
    text(size: 7.5pt, weight: 700, fill: ink, name)
    linebreak()
    text(size: 7.1pt, fill: gold, note)
  })
}
#beast(centre-x, 1.725, beast-great, [Great Beast], [table centre])
#beast(centre-x - lesser-offset, 1.075, beast-lesser, [Lesser Beast],
  [12″ from centre])
#beast(centre-x + lesser-offset, 1.075, beast-lesser, [Lesser Beast],
  [12″ from centre])

// Legend.
#let swatch(body) = box(baseline: 15%, width: 11pt, height: 8pt, body)
#place(dx: table-x, dy: 15.62cm, box(width: table-w, grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 0.3cm,
  [
    #swatch(rect(width: 100%, height: 100%, fill: parchment-dark,
      stroke: (paint: ember, thickness: 1.1pt, dash: (array: (3pt, 2pt)))))
    #h(3pt) Chaos Dwarf deployment: the camp, 12″ in from every table edge.
  ],
  [
    #swatch(rect(width: 100%, height: 100%, fill: lizard-blue))
    #h(3pt) Lizardmen deployment: every unit's rear rank on a table edge,
    facing in.
  ],
  [
    #swatch(align(horizon, circle(radius: 4pt, fill: beast-great,
      stroke: 0.7pt + iron)))
    #h(3pt) Sacred Beasts, chained on the centre line.
  ],
)))
