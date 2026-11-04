// Battlefield map for Session 4 · Battle One, "The Rotting Forge".
//
// Standalone source: it does not import the scenario template, because it is
// rendered to a PNG that is embedded unchanged in both the colour and the
// print edition. The palette below is therefore a hardcoded copy of the
// template's colour edition, which is the one place hardcoded colours belong.
//
// Regenerate with:
//   typst compile --root . --format png --ppi 212 \
//     scenarios/art/session-4-battle-1-map.typ \
//     scenarios/art/session-4-battle-1-map.png

#let gold = rgb("#937530")
#let ember = rgb("#a83d15")
#let iron = rgb("#241c15")
#let ink = rgb("#2a2118")
#let parchment = rgb("#f7f1e3")
#let parchment-dark = rgb("#ece1c8")

#let dwarf = rgb("#7a3b2e")
#let dwarf-light = rgb("#dcc3b8")
#let nurgle = rgb("#5e7a3a")
#let nurgle-light = rgb("#d0d8b4")
#let ground = rgb("#d9d2c0")
#let rock = rgb("#9c958b")
#let rock-dark = rgb("#6e6860")
#let slag = rgb("#b3a894")
#let workshop = rgb("#b59a7a")
#let workshop-dark = rgb("#6b5236")
#let runoff = rgb("#a9b79c")
#let runoff-dark = rgb("#6f8562")
#let furnace = rgb("#c9602b")
#let bellows = rgb("#8d8c8a")
#let crucible = rgb("#7fa04a")

#set page(width: 22cm, height: 17.6cm, margin: 0pt, fill: parchment)
#set text(font: "Libertinus Serif", fill: ink, size: 8.5pt)

// The table is 72" by 48", drawn to scale. `u` is one table inch on the page;
// every position below is given in table inches from the table's top left.
// The Chaos Dwarf table edge is at the top, the Warriors of Chaos edge at the
// bottom.
#let u = 19.25cm / 72
#let table-w = 72 * u
#let table-h = 48 * u
#let table-x = (22cm - table-w) / 2
#let table-y = 2.21cm

#let px(i) = table-x + i * u
#let py(i) = table-y + i * u
#let pt(x, y) = (px(x), py(y))

#let zone-stroke(paint) = (paint: paint, thickness: 1.1pt)
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

// Terrain pieces, each given by its centre in table inches. The positions
// are a proposal, laid out point-symmetrically about the table's centre so
// that neither side is favoured: the pieces are whatever the collection
// holds.
#let slag-heap(cx, cy, w, h) = {
  place(dx: px(cx) - w / 2 * u, dy: py(cy) - h / 2 * u,
    ellipse(width: w * u, height: h * u, fill: slag, stroke: 0.7pt + rock-dark))
  place(dx: px(cx) - w / 3.2 * u, dy: py(cy) - h / 3.2 * u,
    ellipse(width: w / 1.6 * u, height: h / 1.6 * u, fill: none,
      stroke: (paint: rock-dark, thickness: 0.6pt, dash: "dotted")))
}
#let workshop-piece(cx, cy, w, h) = {
  place(dx: px(cx) - w / 2 * u, dy: py(cy) - h / 2 * u,
    rect(width: w * u, height: h * u, fill: workshop, stroke: 0.9pt + workshop-dark))
  // The ridge of a broken roof.
  place(dx: px(cx) - w / 2 * u, dy: py(cy),
    line(length: w * u, stroke: (paint: workshop-dark, thickness: 0.6pt, dash: "dashed")))
}
#let runoff-pool(cx, cy, w, h) = place(
  dx: px(cx) - w / 2 * u, dy: py(cy) - h / 2 * u,
  polygon(fill: runoff, stroke: (paint: runoff-dark, thickness: 0.8pt, dash: "densely-dashed"),
    (0.1 * w * u, 0.3 * h * u), (0.4 * w * u, 0 * u), (0.8 * w * u, 0.1 * h * u),
    (w * u, 0.5 * h * u), (0.75 * w * u, h * u), (0.35 * w * u, 0.9 * h * u),
    (0 * u, 0.65 * h * u)),
)
#let machinery-piece(cx, cy, w, h) = place(
  dx: px(cx) - w / 2 * u, dy: py(cy) - h / 2 * u,
  polygon(fill: rock, stroke: 0.8pt + rock-dark,
    (0 * u, 0.2 * h * u), (0.3 * w * u, 0 * u), (0.7 * w * u, 0.15 * h * u),
    (w * u, 0.1 * h * u), (w * u, 0.7 * h * u), (0.65 * w * u, h * u),
    (0.2 * w * u, 0.85 * h * u)),
)
#let chimney(cx, cy) = {
  place(dx: px(cx) - 1.4 * u, dy: py(cy) - 1.4 * u,
    circle(radius: 1.4 * u, fill: rock-dark, stroke: 0.8pt + iron))
  place(dx: px(cx) - 0.6 * u, dy: py(cy) - 0.6 * u,
    circle(radius: 0.6 * u, fill: iron, stroke: none))
}
// A run of pipework, an obstacle, from one table point to another.
#let pipework(x0, y0, x1, y1) = {
  place(dx: px(x0), dy: py(y0), line(end: ((x1 - x0) * u, (y1 - y0) * u),
    stroke: (paint: rock-dark, thickness: 3.2pt, cap: "round")))
  place(dx: px(x0), dy: py(y0), line(end: ((x1 - x0) * u, (y1 - y0) * u),
    stroke: (paint: rock, thickness: 1.4pt, cap: "round")))
}

// A forge mechanism: a 6" piece on the centre line, with the Unstable
// Machinery reach 6" out from its base.
#let mechanism(cx, cy, fill, body) = {
  place(dx: px(cx) - 9 * u, dy: py(cy) - 9 * u,
    circle(radius: 9 * u, fill: none,
      stroke: (paint: ember, thickness: 0.7pt, dash: (array: (3pt, 2.5pt)))))
  place(dx: px(cx) - 3 * u, dy: py(cy) - 3 * u,
    polygon.regular(size: 6 * u, vertices: 8, fill: iron, stroke: 1pt + gold))
  place(dx: px(cx) - 1.6 * u, dy: py(cy) - 1.6 * u,
    circle(radius: 1.6 * u, fill: fill, stroke: 0.6pt + gold))
  at-centre(cx, cy + 3.5, text(size: 7.2pt, weight: 700, fill: iron,
    tracking: 0.4pt, smallcaps(body)), w: 14)
}

// Title and subtitle.
#place(dy: 0.60cm, box(width: 100%, align(center,
  text(size: 12pt, weight: 700, fill: ink, tracking: 0.55pt,
    smallcaps[The Rotting Forge]),
)))
#place(dy: 1.40cm, box(width: 100%, align(center,
  text(size: 8pt, fill: gold, tracking: 1.0pt,
    smallcaps[72″ × 48″ · deployment zones and mechanisms drawn to scale]),
)))
#place(dy: 1.78cm, box(width: 100%, align(center,
  text(size: 7pt, fill: gold, tracking: 0.6pt,
    smallcaps[terrain is a proposal, mirrored through the centre · the pieces are whatever the collection holds]),
)))

// The table.
#place(dx: table-x, dy: table-y, box(
  width: table-w,
  height: table-h,
  fill: ground,
  stroke: 0.7pt + iron,
))

// Deployment zones: 12" from each long edge.
#place(dx: px(0), dy: py(0), rect(width: table-w, height: 12 * u,
  fill: dwarf-light, stroke: zone-stroke(dwarf)))
#place(dx: px(0), dy: py(36), rect(width: table-w, height: 12 * u,
  fill: nurgle-light, stroke: zone-stroke(nurgle)))

// Terrain. Each piece in the Chaos Dwarf half has its mirror image in the
// Warriors of Chaos half, through the centre of the table.
#machinery-piece(10, 7, 5, 4)
#machinery-piece(62, 41, 5, 4)
#slag-heap(30, 7, 9, 4)
#slag-heap(42, 41, 9, 4)
#workshop-piece(10, 15, 6, 5)
#workshop-piece(62, 33, 6, 5)
#runoff-pool(46, 14, 6, 4)
#runoff-pool(26, 34, 6, 4)
#chimney(64, 18)
#chimney(8, 30)
#pipework(56, 6, 64, 9)
#pipework(16, 42, 8, 39)
#pipework(29, 16, 34, 13)
#pipework(43, 32, 38, 35)

// The three forge mechanisms, on the centre line.
#mechanism(20, 24, bellows)[The Bellows Engine]
#mechanism(36, 24, furnace)[The Great Furnace]
#mechanism(52, 24, crucible)[The Casting Crucible]

// Zone labels.
#at-centre(36, 2.2, zone-label(dwarf)[Chaos Dwarfs], w: 16)
#at-centre(36, 3.7, text(size: 7pt, fill: dwarf, [12″ from their edge]), w: 16)
#at-centre(36, 43.0, zone-label(nurgle)[Warriors of Chaos], w: 18)
#at-centre(36, 44.5, text(size: 7pt, fill: nurgle, [12″ from their edge]), w: 18)

// Dimensions: the zones are 12" deep, the centre line 24" from either edge,
// and the mechanisms 16" apart.
#dim-v(2, 0, 12, [12″], left: false)
#dim-v(2, 36, 48, [12″], left: false)
#dim-v(70, 24, 48, [24″])
#dim-h(20, 36, 37.2, [16″], above: false)
#dim-h(36, 52, 37.2, [16″], above: false)

// Legend.
#let swatch(body) = box(baseline: 15%, width: 11pt, height: 8pt, body)
#place(dx: table-x, dy: 15.35cm, box(width: table-w, grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 0.3cm,
  row-gutter: 0.2cm,
  [
    #swatch(rect(width: 100%, height: 100%, fill: dwarf-light,
      stroke: zone-stroke(dwarf)))
    #h(3pt) Chaos Dwarf deployment, 12″ deep.
  ],
  [
    #swatch(rect(width: 100%, height: 100%, fill: nurgle-light,
      stroke: zone-stroke(nurgle)))
    #h(3pt) Warriors of Chaos deployment, 12″ deep.
  ],
  [
    #swatch(align(horizon, polygon.regular(size: 8pt, vertices: 8, fill: iron,
      stroke: 0.7pt + gold)))
    #h(3pt) Forge mechanism, 6″ across, impassable.
  ],
  [
    #swatch(align(horizon, circle(radius: 4pt, fill: none,
      stroke: (paint: ember, thickness: 0.7pt, dash: (array: (2pt, 1.5pt))))))
    #h(3pt) Unstable Machinery: "nearby" is 6″ out.
  ],
  [
    #swatch(align(horizon, ellipse(width: 100%, height: 100%, fill: slag,
      stroke: 0.7pt + rock-dark)))
    #h(3pt) Slag heap: a hill.
  ],
  [
    #swatch(rect(width: 100%, height: 100%, fill: workshop,
      stroke: 0.7pt + workshop-dark))
    #h(3pt) Rusted workshop: a building.
  ],
  [
    #swatch(rect(width: 100%, height: 100%, fill: runoff,
      stroke: (paint: runoff-dark, thickness: 0.7pt, dash: "densely-dashed")))
    #h(3pt) Contaminated runoff: marsh.
  ],
  [
    #swatch(rect(width: 100%, height: 100%, fill: rock,
      stroke: 0.7pt + rock-dark))
    #h(3pt) Machinery and chimneys: impassable. Pipes: obstacles.
  ],
)))
