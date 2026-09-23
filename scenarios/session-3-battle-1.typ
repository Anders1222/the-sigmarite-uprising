#import "template.typ": *

#show: scenario.with(
  title: [The Slayer Bait],
  round: [Session 3 · Battle One],
  sides: (
    ([Chaos Dwarfs],),
    ([Dwarfs],),
  ),
  intro: [
    A notorious Dwarf Slayer has spent weeks hunting the Ogre tribes of the
    Dark Lands. Several Ogre champions have already fallen to his axe, and now
    he has sworn to kill another.

    The Chaos Dwarfs see an opportunity. Seeking an alliance with the Ogres,
    they offer to help destroy the troublesome Slayer. An Ogre champion and a
    small warband are deliberately left exposed, apparently separated from the
    rest of the tribe.

    The Slayer takes the bait.

    But hidden beyond the rocks, the Chaos Dwarfs and the rest of the Ogre
    warband wait for the signal to close the trap.
  ],
)

#armies[
  *1,500 points* per side: Chaos Dwarfs with Ogre allies against Dwarfs.

  Campaign list rules apply:
  - "Heroes" only
  - Up to 15% rare
  - Hero budget: 350 points
  - One magic item worth a maximum of 25 points

  The Dwarf army must include *Skorri Bloodaxe* as its general, and at least
  one unit of Slayers.

  *Morglum Steelgut* is an Ogre and counts as allied to the Chaos Dwarfs. He
  does not have a cost.

  #special-rule[Skorri Bloodaxe][
    Skorri Bloodaxe is a Daemon Slayer and the general of the Dwarf army. He
    has hunted the Ogre tribes of the Dark Lands for weeks and has sworn to
    take another champion's head before he finds his own doom.

    #table(
      columns: 11,
      align: center,
      table.header[Daemon Slayer][M][WS][BS][S][T][W][I][A][Ld][Points],
      [Skorri Bloodaxe], [3], [7], [4], [4], [5], [3], [5], [4], [10], [175],
    )

    *Troop type:* Infantry (Character, Dwarf).

    *Equipment:* great weapon, Wards of Grimnir.

    *Special rules:* Ancestral Grudge, Daemon Slayer, Deathblow, Dragon
    Slayer, Magic Resistance (1), Relentless, Unbreakable.

    *Wards of Grimnir:* the Magical Ward (6+) special rule against missile
    attacks, and the Magic Resistance (2) special rule.

    He may take no further upgrades, magic items or runic items.
  ]

  #special-rule[Morglum Steelgut][
    Morglum Steelgut is an Ogre Bruiser, a champion of his tribe with a
    string of dead rivals behind him. He is an allied model: he costs no
    points and is not counted against the army's 1,500 points or its hero
    budget, and the usual rules for allies apply to him.

    #table(
      columns: 11,
      align: center,
      table.header[Bruiser][M][WS][BS][S][T][W][I][A][Ld][Points],
      [Morglum Steelgut], [6], [5], [4], [5], [5], [4], [4], [5], [8], [-],
    )

    *Troop type:* Monstrous Infantry (Character, Ogre).

    *Equipment:* great weapon, gut-plate, light armour.

    *Special rules:* Natural Armour (6+), Ogre Charge.

  ]
]

#battlefield[
  The table is 6 by 4 feet, 72" by 48". The Dwarfs have one short edge, the
  Chaos Dwarfs the other.

  A prominent piece of terrain represents the Ogre camp. Its centre sits on
  the table's centre line, 24" from the Chaos Dwarf table edge. A building
  stands at that centre, a stone hall, an Ogre lodge or a ruined tower, and
  the centre of the building is the centre of the camp, from which every
  distance is measured. It follows the normal rules for buildings: it blocks
  line of sight and gives *Morglum Steelgut* somewhere to shelter from the
  Dwarf war machines until the Slayer reaches him.

  The rest of the terrain is laid out as shown on the map, each piece placed
  by its centre. The pieces themselves are whatever the collection holds:
  rocky outcrops screen the flank windows from the Dwarf lines, a rock spur
  and ruins cover the Chaos Dwarf edge, the Dwarfs get a hill for their war
  machines, and scrub gives soft cover on the walk in. The lanes from every
  entry point to the camp stay clear of anything that slows movement.

  #block(
    width: 100%,
    stroke: 1pt + gold,
    inset: 3pt,
    fill: parchment-dark,
    image("art/session-3-battle-1-map.png", width: 100%),
  )
]

#deployment[
  The Dwarf army deploys within 18" of its short table edge, the Dwarf edge
  on the map.

  *Morglum Steelgut* deploys inside the building at the centre of the Ogre
  camp, 24" from the Chaos Dwarf table edge.

  The remainder of the Chaos Dwarf and Ogre army begins in reserve.

  Before the Dwarfs deploy, the Chaos Dwarf player secretly assigns every
  reserve unit to one of three entry points, named as seen from the Chaos
  Dwarf table edge:

  - Left Flank: the long edge, anywhere between the Dwarf deployment zone
    and the Chaos Dwarf corner
  - Right Flank: the other long edge, likewise
  - Chaos Dwarf Table Edge: the short edge opposite the Dwarfs

  The flank windows are 54" wide and are marked on the map. Write the
  assignments down. They are revealed as the units arrive.
]

#first-turn[
  The Dwarfs take the first turn. The Slayer advances on the camp before the
  trap is sprung.
]

#game-length[
  The battle lasts six turns.
]

#section("Objectives", accent: ember)[
  #special-rule[I · A Slayer's Death][
    The Chaos Dwarfs and Ogres score this objective if *Skorri Bloodaxe* is
    dead at the end of the battle.

    The Dwarfs score it if *Skorri Bloodaxe* is alive at the end of the
    battle.
  ]

  #special-rule[II · The Ogre Champion][
    The Dwarfs score this objective if *Morglum Steelgut* is dead at the end
    of the battle.

    The Chaos Dwarfs and Ogres score it if *Morglum Steelgut* is alive at the
    end of the battle.
  ]

  #special-rule[III · Hold the Killing Ground][
    The central Ogre camp is the third objective.

    At the end of the battle, the side with the greatest Unit Strength within
    6" of the centre of the camp scores it. Characters count normally as part
    of their unit. Fleeing units do not count.

    If both sides have equal Unit Strength, neither side scores.
  ]
]

#special-rules[
  #special-rule[Springing the Trap][
    Beginning on Chaos Dwarf Turn 2, roll a D6 for each reserve unit at the
    start of the Chaos Dwarf turn.

    #table(
      columns: (auto, 1fr),
      align: (center, left),
      table.header[Turn][Arrives on],
      [Turn 2], [3+],
      [Turn 3], [Automatic],
    )

    Units arrive from their assigned entry point. Units entering from a
    flank may enter anywhere along that flank's window, between the Dwarf
    deployment zone and the Chaos Dwarf corner.

    An arriving unit may move and charge as normal in the turn it arrives.
  ]

  #special-rule[The Slayer Takes the Bait][
    *Skorri Bloodaxe* has sworn to take the champion's head. In the Remaining
    Moves sub-phase he must move at his full rate, marching if he is able,
    by the shortest route toward *Morglum Steelgut*. If he has joined a unit,
    that unit moves with him.

    If *Skorri Bloodaxe* can declare a legal charge against *Morglum
    Steelgut*, he must do so.

    Once *Skorri Bloodaxe* has fought at least one round of close combat
    against *Morglum Steelgut*, these restrictions end: the trap has been
    revealed, and the Dwarf player may use him normally.
  ]

  #special-rule[Morglum Holds His Lodge][
    *Morglum Steelgut* may not leave the building he starts in. He must stay
    inside it for the whole battle, and fights any assault on it from within.
  ]
]

#aftermath[
  #special-rule[Campaign Consequences][
    The more objectives the Chaos Dwarfs secure, the more willing the Ogre
    tribe will be to enter an alliance with them. For *each objective* the
    Chaos Dwarfs secure, they gain *100 points of Ogre allies* in the final
    scenario of the campaign, up to 300 points for all three.
  ]
]
