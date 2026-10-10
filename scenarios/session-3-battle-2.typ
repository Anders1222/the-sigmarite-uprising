#import "template.typ": *

#show: scenario.with(
  title: [Of Military Ground Snakes and Men],
  round: [Session 3 · Battle Two],
  art: "art/session-3-battle-2.png",
  sides: (
    ([The Empire],),
    ([Lizardmen],),
  ),
  intro: [
    The vile Dawi-Zharr are right on our heels. We need aid to fend them
    off. Our scouts have spotted a small caravan of Lizardmen, though
    attempts to make contact have been met with extreme hostility.

    Not a surprising response from the servants of the Old Ones, though
    these Lizardmen in particular seem to be infected by a strange parasite,
    and they are carrying around vandalised effigies of their masters, old
    tablets brimming with power. Maybe putting down these infested lizards
    and reclaiming the tablets would make someone out there grateful enough
    to lend us some help.

    But the scaled ones prove to be surprisingly vigilant. Our ambush is
    spotted, yet this only seems to encourage the enemy to increase their
    pace. We must intercept them, meet them in the field and end this
    disease before it spreads any further.
  ],
)

#armies[
  *1,700 points* per side: the Empire against Lizardmen.

  The Lizardmen army may take up to *150 points* of magic items on top of
  its 1,700 points. It must include the three *Ancient Tablets* below.

  Otherwise, campaign list rules apply:
  - No Lords
  - Up to 15% rare
  - Hero budget: 350 points, excluding magic items

  #special-rule[Ancient Tablet][
    A vandalised effigy of the Old Ones, carried by its Skink crew and still
    crackling with the power of its makers.

    #table(
      columns: 11,
      align: center,
      table.header[Profile][M][WS][BS][S][T][W][I][A][Ld][Points],
      [Ancient Tablet], [-], [-], [-], [-], [5], [4], [1], [\*], [-], [90],
      [Skink Crew], [6], [2], [3], [3], [-], [-], [4], [4], [5], [-],
    )

    *Unit size:* 1.

    *Troop type:* Shrine (Armour Save 6+).

    *Base size:* 40×40 mm or 50×50 mm.

    *Equipment (Skink Crew):* hand weapon, shield, Natural Armour (6+).

    *Special rules:* Cold-blooded, Aquatic, Magical Ward (6+), Magic
    Resistance (1), and the scenario rules Precious Cargo, Force Field
    Malfunction, Crackling With Power and Ancient Magic.
  ]
]

#battlefield[
  The table is 6 by 4 feet, 72" by 48". The Empire has one long edge, the
  Lizardmen the other.

  The battlefield should contain hills, cliffs and some sparse forest, laid
  out as shown on the map.

  #block(
    width: 100%,
    stroke: 1pt + gold,
    inset: 3pt,
    fill: parchment-dark,
    image("art/session-3-battle-2-map.png", width: 100%),
  )
]

#deployment[
  Follow the standard rules for deployment, using the zones on the map.

  The Empire deploys in the two corners of its table edge. Each zone is the
  triangle cut off by a straight line from the centre of the Empire edge to
  the middle of the short edge: 36" along the long edge and 24" along the
  short edge.

  The Lizardmen deploy in the triangle whose base is their whole table edge
  and whose point is the centre of the table, 24" from their edge.

  Ancient Tablets may not be deployed as Scouts or Ambushers.
]

#first-turn[
  Follow the standard rules for first turn.
]

#game-length[
  The battle lasts six turns, or until all Ancient Tablets have escaped,
  whichever comes first.
]

#special-rules[
  #special-rule[Precious Cargo][
    An Ancient Tablet, and any unit it joins, has the Stubborn special rule.
    If the unit it joins has a Blessed Spawning, the Ancient Tablet
    automatically counts as having the same spawning.

    Should an Ancient Tablet ever break from combat or flee because of a
    Panic test, it is destroyed and does not make a flee move. Any unit it
    is with may still flee as normal.
  ]

  #special-rule[Force Field Malfunction][
    If two Ancient Tablets ever come within 12" of each other, they explode.
    Place the large round template over each tablet: any model under a
    template suffers a Strength 10 hit. Afterwards, remove the Ancient
    Tablets as casualties and place an objective marker where each one
    stood.
  ]

  #special-rule[Crackling With Power][
    These ancient Lizardmen artefacts are partially broken, which makes them
    very unpredictable. In close combat, an Ancient Tablet causes D6
    automatic hits with a Strength of D6. If both dice roll a 6, the hits
    are resolved against the Ancient Tablet itself or the unit it is with.
  ]

  #special-rule[Ancient Magic][
    Each Ancient Tablet holds one of the following bound spells. Before
    deployment, assign each spell to a different Ancient Tablet.

    - *Cerulean Shield:* Lore of Heavens, Level 1, cast on 6+.
    - *Shem's Burning Gaze:* Lore of Light, signature spell, cast on 5+.
    - *Dazzling Brightness:* Lore of Light, Level 1, cast on 6+.
  ]

  #special-rule[Claim the Tablets][
    To claim the Ancient Tablets, they must first be taken from the
    Lizardmen. Whenever an Ancient Tablet is killed, place an objective
    marker where it died.

    The side with the most non-fleeing Unit Strength within 6" of a marker
    controls that objective.
  ]

  #special-rule[Breakthrough!][
    If an Ancient Tablet reaches the Empire table edge, it and any unit it
    has joined are removed from the game. The objective for that Ancient
    Tablet can no longer be claimed.
  ]
]

#aftermath[
  #special-rule[Campaign Consequences][
    The tablets the Empire claims buy it Lizardmen allies in the final
    battle of the campaign. At the end of the battle, the Empire gains:

    - *100 points of Lizardmen allies* for each Ancient Tablet objective it
      controls.
    - *50 points of Lizardmen allies* for each Ancient Tablet destroyed
      whose objective it does not control.

    An Ancient Tablet that broke through earns nothing.
  ]
]
