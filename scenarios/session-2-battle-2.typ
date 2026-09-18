#import "template.typ": *

#show: scenario.with(
  title: [A Walk on the Wild Side],
  round: [Session 2 · Battle Two],
  sides: (
    ([The Empire],),
    ([Greenskins],),
  ),
  intro: [
    Having escaped the halls of the undead, we now find ourselves in the
    desolate Dark Lands. Exhausted, we traverse the steppes in search of
    shelter. The heat is immense, the dust fills our lungs and stings our
    eyes, and the light of the sun barely pierces the factory smoke that
    hangs across the sky like clouds. Some of us are lost, left for the
    carrion if the Gods are merciful. Worse creatures soon find the rest of
    us, as crude war horns start sounding all around, followed by the thunder
    of hooves. We are roughly reminded that this is a land of carnage, and we
    find ourselves trapped between two greenskin tribes eager to tear us and
    each other to pieces. Sigmar preserve us.
  ],
)

#armies(draft: true)[
  *1,500 points* per side: The Empire against Greenskins.

  The Greenskins may only field the following unit types:
  - Cavalry
  - War Beasts
  - Monstrous Cavalry
  - Monstrous Creatures
  - Monsters
  - Chariots
  - Swarms

  The Greenskins may take up to 100 points of magic items in total. They must
  field at least two Monsters, Monstrous Creatures or single entity Chariots,
  and at least two characters.
]

#battlefield(draft: true)[
  The open steppe of the Dark Lands: hills, cliffs and some sparse forest. The
  table is 6 by 4 feet.

  A mine or ruin stands centrally on the right-hand half of the table, 15" in
  from the Brainmuncha Tribe's table edge, as shown on the map.

  #block(
    width: 100%,
    stroke: 1pt + gold,
    inset: 3pt,
    fill: parchment-dark,
    image("art/session-2-battle-2-map.png", width: 100%),
  )
]

#deployment(draft: true)[
  The Empire deploys their entire army in the 12" wide strip across the centre
  of the table, 30" from either short table edge. All units must face the same
  long table edge.

  The Empire may not use the Ambushers rule. Neither player may use the Scouts
  or Vanguard rules.

  The Greenskins do not deploy normally (see *Between Two Hammers*). Instead,
  divide the army into two parts with the same number of units and assign each
  part a short table edge. These are the 'Ard'Ead Tribe and the Brainmuncha
  Tribe. Each tribe must contain at least one Monster, Monstrous Creature or
  single entity Chariot, and at least one character, who counts as that tribe's
  General for all purposes. The two tribes treat each other as Desperate Allies.
]

#first-turn(draft: true)[
  The Empire takes the first turn.
]

#game-length(draft: true)[
  The game lasts six turns, or ends sooner if one army has been completely
  wiped out.
]

#special-rules(draft: true)[
  #special-rule[Between Two Hammers][
    Instead of deploying normally, the Greenskins arrive from the two short
    table edges at the beginning of turn 1, each tribe from its own edge,
    following the rules for Ambushers. They do not roll to see whether they
    arrive.
  ]

  #special-rule[Hostility][
    The 'Ard'Ead Tribe and the Brainmuncha Tribe despise each other and may
    well prefer fighting one another to fighting the Empire. Whenever a
    Greenskin unit is within 9" of a unit from the other tribe at the beginning
    of its turn, it must take a Hostility check: roll a D6. On a 1, the unit
    inflicts D6 hits on the nearest unit from the other tribe, at the Strength
    of the majority of its models, distributed as shooting. It may do nothing
    else this turn, unless it is engaged in close combat, in which case it
    fights that combat normally.

    This does not stop the attacked unit from acting, or from taking its own
    Hostility check. These hits never cause Panic tests.
  ]
]

#aftermath(draft: true)[
  #special-rule[Abandoned Ruins][
    The small ruin holds something valuable, though claiming it may mean
    breaking rank. If an Empire unit reaches base contact with the ruin at any
    point during the battle, the Empire gains the *Banner of Defiance* from the
    main rulebook.
  ]

  #special-rule[Pride and Joy][
    Before the battle, the Greenskins player designates one Monster, Monstrous
    Creature or single entity Chariot in each tribe. Slaying these creatures
    will surely garner the favour of Sigmar. For each of them the Empire slays,
    the Empire gains one of the magic items below, chosen at random. If both
    are slain, the Empire gains both. If a designated unit flees off the table,
    the chance to win its item is lost.

    - Armour of Tarnus
    - The Mace of Helsturm
  ]
]
