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

#armies(draft: true)[
  *1,500 points* per side: Chaos Dwarfs with Ogre allies against Dwarfs.

  Campaign list rules apply:
  - "Heroes" only
  - Up to 15% rare
  - Hero budget: 350 points
  - One magic item worth a maximum of 25 points

  The Dwarf army must include *The Hunter* as its general, and at least one
  unit of Slayers.

  *The Bait* is an Ogre and counts as allied to the Chaos Dwarfs. He does not
  have a cost.

  #special-rule[The Hunter][
    Skorri Bloodaxe is a Daemon Slayer and the general of the Dwarf army. He
    has hunted the Ogre tribes of the Dark Lands for weeks and has sworn to
    take another champion's head before he finds his own doom. He costs
    *175 points*, counted against the army's 1,500 points and its hero budget
    as normal. He is a Lord choice, allowed in this scenario despite the
    Heroes-only campaign rule.

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

  #special-rule[The Bait][
    Gorgut Skullchewer is an Ogre Bruiser, a champion of his tribe with a
    string of dead rivals behind him. He is an allied model: he costs no
    points and is not counted against the army's 1,500 points or its hero
    budget, and the usual rules for allies apply to him.

    #table(
      columns: 11,
      align: center,
      table.header[Bruiser][M][WS][BS][S][T][W][I][A][Ld][Points],
      [Gorgut Skullchewer], [6], [5], [4], [5], [5], [4], [4], [5], [8], [-],
    )

    *Troop type:* Monstrous Infantry (Character, Ogre).

    *Equipment:* great weapon, gut-plate, light armour.

    *Special rules:* Natural Armour (6+), Ogre Charge.

  ]

  #to-be-decided[
    How the Ogre contingent is taken: an allied contingent, or a single mixed
    list.
  ]
]

#battlefield(draft: true)[
  The table is 6 by 4 feet, 72" by 48".

  A prominent piece of terrain near the centre of the battlefield represents
  the Ogre camp.

  The rest of the table should carry rocky hills, scrub, ruins or similar
  terrain, able to conceal the approaching ambushers.

  #to-be-decided[
    A battlefield map is still to be drawn.
  ]
]

#deployment(draft: true)[
  The Dwarf army deploys within 12" of one short table edge.

  *The Bait* and up to 300 points of Ogre troops deploy within 8" of the
  centre of the battlefield.

  The remainder of the Chaos Dwarf and Ogre army begins in reserve.

  Before the Dwarfs deploy, the Chaos Dwarf player secretly assigns every
  reserve unit to one of:

  - Left Flank
  - Right Flank
  - Chaos Dwarf Table Edge, the short edge opposite the Dwarfs

  Write the assignments down. They are revealed as the units arrive.
]

#first-turn(draft: true)[
  #to-be-decided[
    Who takes the first turn is not yet settled. The reserve rolls assume the
    Chaos Dwarfs have a Turn 1 in which nothing arrives, so the Dwarfs
    advancing first fits the story. The group decides at the table.
  ]
]

#game-length(draft: true)[
  The battle lasts six turns.
]

#section("Objectives", accent: ember, draft: true)[
  #special-rule[I · A Slayer's Death][
    The Chaos Dwarfs and Ogres score this objective if *The Hunter* is dead at
    the end of the battle.

    The Dwarfs score it if *The Hunter* is alive at the end of the battle.
  ]

  #special-rule[II · The Ogre Champion][
    The Dwarfs score this objective if *The Bait* is dead at the end of the
    battle.

    The Chaos Dwarfs and Ogres score it if *The Bait* is alive at the end of
    the battle.
  ]

  #special-rule[III · Hold the Killing Ground][
    The central Ogre camp is the third objective.

    At the end of the battle, the side with the greatest Unit Strength within
    6" of the centre of the camp scores it. Characters count normally as part
    of their unit. Fleeing units do not count.

    If both sides have equal Unit Strength, neither side scores.
  ]
]

#special-rules(draft: true)[
  #special-rule[Springing the Trap][
    Beginning on Chaos Dwarf Turn 2, roll a D6 for each reserve unit at the
    start of the Chaos Dwarf turn.

    #table(
      columns: (auto, 1fr),
      align: (center, left),
      table.header[Turn][Arrives on],
      [Turn 2], [4+],
      [Turn 3], [3+],
      [Turn 4], [Automatic],
    )

    Units arrive from their assigned table edge. Units entering from a flank
    must enter from the middle 24" of that edge.

    An arriving unit may move normally, but may not charge during the turn it
    arrives.
  ]

  #special-rule[The Slayer Takes the Bait][
    If *The Hunter* can declare a legal charge against *The Bait*, he must do
    so.

    Once *The Hunter* has fought at least one round of close combat against
    *The Bait*, this restriction ends: the trap has been revealed, and the
    Dwarf player may use him normally.
  ]
]

#aftermath(draft: true)[
  #special-rule[Campaign Consequences][
    The more objectives the Chaos Dwarfs secure, the more willing the Ogre
    tribe will be to enter an alliance with them. For *each objective* the
    Chaos Dwarfs secure, they gain *100 points of Ogre allies* in the final
    scenario of the campaign, up to 300 points for all three.
  ]
]
