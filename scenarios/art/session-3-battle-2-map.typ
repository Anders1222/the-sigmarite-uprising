// Battlefield map for Session 3 · Battle Two, "Of Military Ground Snakes
// and Men".
//
// Standalone source: it does not import the scenario template, because it is
// rendered to a PNG that is embedded unchanged in both the colour and the
// print edition. The palette below is therefore a hardcoded copy of the
// template's colour edition, which is the one place hardcoded colours belong.
//
// Regenerate with:
//   typst compile --root . --format png --ppi 212 \
//     scenarios/art/session-3-battle-2-map.typ \
//     scenarios/art/session-3-battle-2-map.png

#let gold = rgb("#937530")
#let ember = rgb("#a83d15")
#let iron = rgb("#241c15")
#let ink = rgb("#2a2118")
#let parchment = rgb("#f7f1e3")
#let parchment-dark = rgb("#ece1c8")

#let empire = rgb("#4f5f78")
#let empire-light = rgb("#c3c9d2")
#let lizard = rgb("#3f6f5e")
#let lizard-light = rgb("#bdd0c2")
#let ember-light = rgb("#e3b89c")
#let ground = rgb("#e1d7bb")
#let rock = rgb("#9c958b")
#let rock-dark = rgb("#6e6860")
#let hill = rgb("#d4bc7c")
#let forest = rgb("#86a46a")
#let forest-dark = rgb("#4f6b3c")

#set page(width: 22cm, height: 17cm, margin: 0pt, fill: parchment)
#set text(font: "Libertinus Serif", fill: ink, size: 8.5pt)

// The table is 72" by 48", drawn to scale. `u` is one table inch on the page;
// every position below is given in table inches from the table's top left.
// The Empire table edge is at the top, the Lizardmen edge at the bottom.
#let u = 19.25cm / 72
#let table-w = 72 * u
#let table-h = 48 * u
#let table-x = (22cm - table-w) / 2
#let table-y = 2.21cm

#let px(i) = table-x + i * u
#let py(i) = table-y + i * u
#let pt(x, y) = (px(x), py(y))

// The Empire deploys in the two corners of its edge, cut off by lines from
// the centre of its edge to the middle of each short edge. The Lizardmen
// deploy in the triangle from their whole edge to the centre of the table.
#let band = 1.3

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
// follow the scenario's sketch and are only indicative: the pieces are
// whatever the collection holds.
#let hill-piece(cx, cy, w, h) = {
  place(dx: px(cx) - w / 2 * u, dy: py(cy) - h / 2 * u,
    ellipse(width: w * u, height: h * u, fill: hill, stroke: 0.7pt + gold))
  place(dx: px(cx) - w / 3.2 * u, dy: py(cy) - h / 3.2 * u,
    ellipse(width: w / 1.6 * u, height: h / 1.6 * u, fill: none,
      stroke: (paint: gold, thickness: 0.6pt, dash: "dotted")))
}
#let cliff-piece(cx, cy, w, h) = place(
  dx: px(cx) - w / 2 * u, dy: py(cy) - h / 2 * u,
  polygon(fill: rock, stroke: 0.8pt + rock-dark,
    (0.15 * w * u, 0.05 * h * u), (0.6 * w * u, 0 * u), (w * u, 0.35 * h * u),
    (0.9 * w * u, 0.8 * h * u), (0.55 * w * u, h * u), (0.1 * w * u, 0.75 * h * u),
    (0 * u, 0.35 * h * u)),
)
#let forest-piece(cx, cy, w, h) = {
  place(dx: px(cx) - w / 2 * u, dy: py(cy) - h / 2 * u,
    polygon(fill: forest, stroke: 0.8pt + forest-dark,
      (0.2 * w * u, 0.1 * h * u), (0.55 * w * u, 0 * u), (0.85 * w * u, 0.15 * h * u),
      (w * u, 0.5 * h * u), (0.85 * w * u, 0.9 * h * u), (0.45 * w * u, h * u),
      (0.1 * w * u, 0.8 * h * u), (0 * u, 0.4 * h * u)))
  // A few trees scattered through the wood.
  for (fx, fy) in ((0.3, 0.35), (0.62, 0.3), (0.45, 0.62), (0.75, 0.65), (0.25, 0.68)) {
    place(dx: px(cx) + (fx - 0.5) * w * u - 0.45 * u,
      dy: py(cy) + (fy - 0.5) * h * u - 0.45 * u,
      circle(radius: 0.45 * u, fill: forest-dark.lighten(25%), stroke: none))
  }
}

// Title and subtitle.
#place(dy: 0.60cm, box(width: 100%, align(center,
  text(size: 12pt, weight: 700, fill: ink, tracking: 0.55pt,
    smallcaps[The Interception]),
)))
#place(dy: 1.40cm, box(width: 100%, align(center,
  text(size: 8pt, fill: gold, tracking: 1.0pt,
    smallcaps[72″ × 48″ · deployment zones drawn to scale]),
)))
#place(dy: 1.78cm, box(width: 100%, align(center,
  text(size: 7pt, fill: gold, tracking: 0.6pt,
    smallcaps[terrain placed as on the scenario sketch · the pieces are whatever the collection holds]),
)))

// The table.
#place(dx: table-x, dy: table-y, box(
  width: table-w,
  height: table-h,
  fill: ground,
  stroke: 0.7pt + iron,
))

// Deployment zones.
#place(polygon(fill: empire-light, stroke: zone-stroke(empire),
  pt(0, 0), pt(36, 0), pt(0, 24)))
#place(polygon(fill: empire-light, stroke: zone-stroke(empire),
  pt(72, 0), pt(36, 0), pt(72, 24)))
#place(polygon(fill: lizard-light, stroke: zone-stroke(lizard),
  pt(0, 48), pt(72, 48), pt(36, 24)))

// The Empire table edge, which the Ancient Tablets try to reach.
#place(dx: px(0), dy: py(0), box(
  width: table-w, height: band * u, fill: ember-light,
  stroke: (paint: ember, thickness: 1.1pt, dash: (array: (4pt, 2.5pt))),
))

// Terrain, after the sketch: hills, cliffs and sparse forest.
#cliff-piece(11, 5, 4, 3)
#forest-piece(12, 16, 7, 7)
#cliff-piece(31, 15, 3, 4)
#forest-piece(46, 8, 8, 7)
#hill-piece(61, 12, 10, 5)
#cliff-piece(60, 16, 5, 4)
#hill-piece(21, 28, 5, 9)
#cliff-piece(5, 38, 4.5, 4)
#forest-piece(26, 42, 7, 7)
#hill-piece(43, 44, 6, 5)
#forest-piece(63, 35, 6.5, 7)

// Zone labels.
#at-centre(20, 5.6, zone-label(empire)[Empire], w: 12)
#at-centre(20, 7.1, text(size: 7pt, fill: empire, [left corner]), w: 12)
#at-centre(60, 5.6, zone-label(empire)[Empire], w: 12)
#at-centre(60, 7.1, text(size: 7pt, fill: empire, [right corner]), w: 12)
#at-centre(53, 41, zone-label(lizard)[Lizardmen], w: 14)
#at-centre(53, 42.5, text(size: 7pt, fill: lizard, [their whole edge to the centre]), w: 16)
#at-centre(36, 0.12, text(size: 6.6pt, weight: 700, fill: ember, tracking: 0.5pt,
  smallcaps[Empire table edge · Breakthrough!]), w: 30)

// Zone dimensions: each Empire corner runs 36" along the long edge and 24"
// along the short edge; the Lizardmen point reaches 24" into the table.
#dim-h(0, 36, 2.6, [36″], above: false)
#dim-h(36, 72, 2.6, [36″], above: false)
#dim-v(2, 0, 24, [24″], left: false)
#dim-v(70, 0, 24, [24″])
#dim-v(36, 24, 48, [24″], left: false)

// Legend.
#let swatch(body) = box(baseline: 15%, width: 11pt, height: 8pt, body)
#place(dx: table-x, dy: 15.35cm, box(width: table-w, grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 0.3cm,
  row-gutter: 0.22cm,
  [
    #swatch(rect(width: 100%, height: 100%, fill: empire-light,
      stroke: zone-stroke(empire)))
    #h(3pt) Empire deployment: both corners of its edge.
  ],
  [
    #swatch(rect(width: 100%, height: 100%, fill: lizard-light,
      stroke: zone-stroke(lizard)))
    #h(3pt) Lizardmen deployment: their edge to the table's centre.
  ],
  [
    #swatch(rect(width: 100%, height: 100%, fill: ember-light,
      stroke: (paint: ember, thickness: 1.1pt, dash: (array: (3pt, 2pt)))))
    #h(3pt) The Empire table edge: an Ancient Tablet that reaches it
    breaks through.
  ],
  [
    #swatch(rect(width: 100%, height: 100%, fill: forest,
      stroke: 0.7pt + forest-dark))
    #h(3pt) Sparse forest
  ],
  [
    #swatch(align(horizon, ellipse(width: 100%, height: 100%, fill: hill,
      stroke: 0.7pt + gold)))
    #h(3pt) Hill
  ],
  [
    #swatch(rect(width: 100%, height: 100%, fill: rock,
      stroke: 0.7pt + rock-dark))
    #h(3pt) Cliff
  ],
)))
