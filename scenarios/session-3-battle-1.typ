#import "template.typ": *

#show: scenario.with(
  title: [The Slayer Bait],
  round: [Session 3 · Battle One],
  art: "art/session-3-battle-1.png",
  sides: (
    ([Chaos Dwarfs],),
    ([Dwarfs],),
  ),
  intro: [
    #text(weight: 700, style: "normal", fill: iron)[From the journal of Zhaitrak the Meat Merchant:]

    The lizards came out of the jungle from every side at once. The pens are
    kindling, the finest stock I ever held is gone back into the trees, and
    word of the loss is already climbing the ziggurat. Luckily, Zhorak
    Coalheart was seen fleeing as the battle began, and I have pinned the
    whole fiasco on him. He does not know it yet, but I have already arranged
    his enlistment in the Infernal Guard.

    Furthermore, the slaves have escaped the lower levels, and I do not know
    how. Rumour has them roaming the countryside, raiding slave farms and
    swelling their ranks. So much for nowhere to go.

    The orc slaves have proved worthless, but their bodies may yet be of use.
    Ogres will haul a siege train for the price of what they eat on the way,
    and are not particular about the menu. Yet they will not trade while a
    Dwarf Slayer, Skorri Bloodaxe, hunts their champions. Several have
    fallen, and he has sworn to take another.

    So I offered them his head, for an alliance. It needed only a little
    bait, and a little persuasion. I told their chief, Morglum Steelgut, that
    a Slayer seeks only the mightiest foe, and that no lesser Ogre could ever
    draw him out. He now sits alone in his lodge, apparently cut off from the
    rest of the tribe.

    The Slayer has taken the bait. Beyond the rocks, my warriors and the
    tribe await my signal. A customer who wishes to die is the easiest sale I
    will ever make: I need only arrange the delivery.
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
      [Skorri Bloodaxe], [3], [7], [4], [4], [5], [3], [5], [4], [10], [155],
    )

    *Troop type:* Infantry (Character, Dwarf).

    *Equipment:* great weapon.

    *Special rules:* Ancestral Grudge, Daemon Slayer, Deathblow, Dragon
    Slayer, Magic Resistance (1), Relentless, Unbreakable.

    He may take no further upgrades, magic items or runic items.
  ]

  #special-rule[Morglum Steelgut][
    Morglum Steelgut is an Ogre Bruiser and the chief of his tribe, with a
    string of dead rivals behind him. He is an allied model: he costs no
    points and is not counted against the army's 1,500 points or its hero
    budget. The usual rules for allies apply to him.

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
  the centre of the building is the centre of the camp. It follows the
  normal rules for buildings.

  The rest of the terrain is laid out as shown on the map. The pieces
  themselves are whatever the collection holds.

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
  reserve unit to one of three entry points.

  The flank windows are 54" wide and are marked on the map. Write the
  assignments down. They are revealed as the units arrive.

  The Dwarf player cannot deploy units as Scouts.
]

#first-turn[
  The Dwarfs take the first turn.
]

#game-length[
  The battle lasts six turns.
]

#section("Objectives", accent: ember)[
  #special-rule[I · A Slayer's Death][
    The Chaos Dwarfs and Ogres score this objective if *Skorri Bloodaxe* is
    dead at the end of the battle.
  ]

  #special-rule[II · The Ogre Chief][
    The Chaos Dwarfs and Ogres score this objective if *Morglum Steelgut* is
    alive at the end of the battle.
  ]

  #special-rule[III · Hold the Killing Ground][
    At the end of the battle, the side with the greatest Unit Strength within
    6" of the centre of the camp scores this objective. Characters count
    normally as part of their unit. Fleeing units do not count.

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
    deployment zone and the Chaos Dwarf corner. Their rear rank must touch
    the table edge.

    An arriving unit may move and charge as normal in the turn it arrives.
  ]

  #special-rule[The Slayer Takes the Bait][
    *Skorri Bloodaxe* has sworn to take the chief's head. If he can
    declare a legal charge against *Morglum Steelgut*, he must do so.

    In the Remaining Moves sub-phase he must move at his full rate, marching
    if he is able, by the shortest route toward *Morglum Steelgut*. If he has
    joined a unit, that unit moves with him.

    If the direct path takes him into contact with an enemy unit, move
    *Skorri Bloodaxe* (and his unit) until contact is achieved, then stop.
    *Skorri Bloodaxe* and his unit count as having charged.

    Resolve the combat normally.

    If possible, *Skorri Bloodaxe* must fight or declare a challenge against
    *Morglum Steelgut*.

    This rule remains in play for as long as *Morglum Steelgut* is alive.
  ]

  #special-rule[Morglum Holds His Lodge][
    *Morglum Steelgut* may not leave the building he starts in. He must stay
    inside it for the whole battle.
  ]
]

#aftermath[
  #special-rule[Campaign Consequences][
    The more objectives the Chaos Dwarfs secure, the more willing the Ogre
    tribe will be to enter an alliance with them. For *each objective* the
    Chaos Dwarfs secure, they gain *100 points of Ogre allies* in the final
    scenario of the campaign.
  ]
]
