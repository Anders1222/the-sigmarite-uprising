#import "template.typ": *

#show: scenario.with(
  title: [The Rotting Forge],
  round: [Session 4 · Battle One],
  sides: (
    ([Chaos Dwarfs],),
    ([Warriors of Chaos], [The Plaguefather's Chosen]),
  ),
  intro: [
    Far out in the Dark Lands, where the ash plains meet the black spurs of
    the Mountains of Mourn, the Dawi-Zharr keep a daemon-forge that has not
    gone cold in a thousand years. Its garrison was stripped to the bone when
    the slaves rose: every warrior who could hold an axe was sent to hunt
    Sigmarites. The forge was left to its overseers, its chained workforce,
    and the hunger of its furnaces.

    Something found it in the dark. The iron rusted overnight. The furnaces
    took on a sickly green glow and the bellows began to breathe out spores
    instead of smoke. The slaves sickened first, then the overseers, and the
    last message carried out of the forge spoke of a host marching under
    rotting banners to claim the place as holy ground for the Plaguefather.

    Hashut does not share. A column of Chaos Dwarfs has turned back from the
    hunt to purge the infestation and relight the fires of the forge. The
    followers of Nurgle mean to finish what the rot began. Between them stand
    three great mechanisms, and whichever god they burn for at nightfall will
    own the forge.
  ],
)

#armies[
  *1,500 points* per side: Chaos Dwarfs against Warriors of Chaos.

  The Warriors of Chaos army is dedicated to Nurgle. Every character and unit
  that may take a Mark of Chaos takes the Mark of Nurgle, and the army may
  not include anything marked for another god.

  Otherwise, campaign list rules apply:
  - No Lords
  - Up to 15% rare
  - Hero budget: 350 points, excluding magic items
]

#battlefield(draft: true)[
  The table is 6 by 4 feet, 72" by 48". The Chaos Dwarfs have one long edge,
  the Warriors of Chaos the other.

  The battlefield is a ruined industrial forge: slag heaps, broken machinery,
  chimneys, pipework, rusted workshops and pools of contaminated runoff. Slag
  heaps count as hills, workshops as buildings, pipework and broken machinery
  as impassable terrain or obstacles as the group sees fit, and runoff pools
  as marshland.

  Three forge mechanisms stand along the centre line of the table, 24" from
  either long edge. Each is a terrain piece roughly 6" across and counts as
  impassable terrain:

  - *The Great Furnace* at the centre of the table, burning with unnatural
    green flames.
  - *The Bellows Engine* 16" from the furnace towards one short edge, still
    pumping toxic spores.
  - *The Casting Crucible* 16" from the furnace towards the other short edge,
    a basin of molten daemon-iron bubbling with corruption.

  All three mechanisms are of equal value and use identical rules.

  #block(
    width: 100%,
    stroke: 1pt + gold,
    inset: 3pt,
    fill: parchment-dark,
    image("art/session-4-battle-1-map.png", width: 100%),
  )

  The terrain on the map is a proposal, mirrored through the centre of the
  table so that neither side is favoured. The pieces are whatever the
  collection holds.

  #special-rule[Plague-Rust (optional)][
    The ground within 3" of each forge mechanism is slick with rust and
    corroded runoff. It counts as difficult terrain.
  ]

  #to-be-decided[
    Agree the terrain at the table. Decide whether Plague-Rust is used; drop
    it if the centre of the table becomes a slog.
  ]
]

#deployment(draft: true)[
  Follow the standard rules for deployment. Each side deploys within 12" of
  its own long table edge.
]

#first-turn(draft: true)[
  Follow the standard rules for first turn.
]

#game-length(draft: true)[
  The battle lasts six turns. The state of each forge mechanism at the end
  of turn 6 decides what the Chaos Dwarfs carry out of the forge.
]

#special-rules(draft: true)[
  As in every battle the Dawi-Zharr fight against outsiders, the Chaos Dwarfs
  are the only side with something to win. Each forge mechanism they have
  reclaimed when the battle ends earns them a boon in the Aftermath.
  The Warriors of Chaos play to deny them: every mechanism they corrupt, or
  simply keep contested, is one the forge does not give back.

  #special-rule[Fire and Rot][
    Each forge mechanism has a claim track with three steps:

    #table(
      columns: 3,
      align: center,
      table.header[Consecrated][Dormant][Rekindled],
      [Claimed by Nurgle], [Neutral], [Claimed by Hashut],
    )

    Every mechanism begins the battle *Dormant*. Mark the track with a dice
    or a token beside the terrain piece.

    Chaos Dwarf units perform *Cleanse and Restart* actions, which move the
    track one step towards Rekindled. Warriors of Chaos units perform
    *Corrupt and Consecrate* actions, which move it one step towards
    Consecrated. One successful action claims a Dormant mechanism.

    A claimed mechanism can still be lost. The enemy can perform actions on
    it as normal: one success returns it to Dormant, and a second claims it
    for their own side. A mechanism may change hands as often as the battle
    allows.
  ]

  #special-rule[Working the Machinery][
    A unit may attempt one action in the Remaining Moves sub-phase of its own
    side's turn if all of the following are true:

    - It is in contact with the mechanism's base.
    - No enemy unit is in contact with the same mechanism. A contested
      mechanism cannot be worked by either side.
    - It has a Unit Strength of 5 or more and is not fleeing.
    - It did not march or charge this turn.

    Roll a D6. On a 4+ the action succeeds and the track moves one step.
    Add +1 to the roll if the unit includes a character. Only one action may
    be attempted on each mechanism per player turn.

    A unit that has worked a mechanism may still shoot and fight as normal.
  ]

  #special-rule[Unstable Machinery][
    At the start of each game turn, roll a D6 for every mechanism and look up
    the result on the table for its step on the claim track. "Nearby" means
    within 6" of the mechanism's base.

    Every result other than Still is either *poison* or *fire*. Its hits are
    distributed as shooting and armour saves apply as normal; fire hits have
    the Flaming Attacks special rule. A Dormant mechanism lashes out both
    ways: the lower the roll the worse the poison, the higher the roll the
    worse the fire. A claimed mechanism breathes only its own god's fury,
    and the higher the roll the worse it gets.

    #table(
      columns: (auto, 1fr),
      align: (center, left),
      table.header[D6][Consecrated],
      [1-2], [*Still.* Nothing happens.],
      [3-4], [*Toxic Fumes* (poison). Every nearby unit suffers D6 Strength 3
        hits.],
      [5], [*Spore Cloud* (poison). Every nearby unit suffers D6 Strength 4
        hits.],
      [6], [*Plague Bloom* (poison). Every nearby unit suffers 2D6 Strength 4
        hits.],
    )

    #table(
      columns: (auto, 1fr),
      align: (center, left),
      table.header[D6][Dormant],
      [1], [*Spore Cloud* (poison). Every nearby unit suffers D6 Strength 4
        hits.],
      [2], [*Toxic Fumes* (poison). Every nearby unit suffers D6 Strength 3
        hits.],
      [3-4], [*Still.* Nothing happens.],
      [5], [*Cinders* (fire). Every nearby unit suffers D6 Strength 3 hits.],
      [6], [*Furnace Flare* (fire). Every nearby unit suffers D6 Strength 4
        hits.],
    )

    #table(
      columns: (auto, 1fr),
      align: (center, left),
      table.header[D6][Rekindled],
      [1-2], [*Still.* Nothing happens.],
      [3-4], [*Cinders* (fire). Every nearby unit suffers D6 Strength 3 hits.],
      [5], [*Furnace Flare* (fire). Every nearby unit suffers D6 Strength 4
        hits.],
      [6], [*Hashut's Breath* (fire). Every nearby unit suffers 2D6 Strength 4
        hits.],
    )
  ]

  #special-rule[Hashut's Fire & Nurgle's Rot][
    The forge-born are no strangers to flame, and the Plaguefather's chosen
    breathe spores as other men breathe air.

    - Chaos Dwarf units ignore every *fire* result.
    - Units with the Mark of Nurgle ignore every *poison* result.

    A claimed mechanism is therefore safe for the army that claimed it, and
    a danger only to its enemies.
  ]

  #to-be-decided[
    Still open before play: whether an action needs the 4+ roll or succeeds
    automatically; whether a contested mechanism should be settled by Unit
    Strength instead of blocking both sides; the strength of the hazard
    results; and whether 6" is the right reach for the hazards.
  ]
]

#aftermath(draft: true)[
  #special-rule[The Fires Relit][
    Only a mechanism that is *Rekindled* at the end of turn 6 counts. A
    Dormant mechanism is still too fouled to work, and a Consecrated one
    belongs to the rot.

    Each mechanism the Chaos Dwarfs rekindle grants its own boon:

    - *The Great Furnace.* The furnace is hot enough to temper daemon-iron
      again. One Chaos Dwarf hero may be given a piece of *forge-wrought
      armour*: any magic armour from the Chaos Dwarf list worth up to 25
      points, at no cost.
    - *The Bellows Engine.* The engine drives the forge's workshops once more.
      In the next battle the Chaos Dwarfs fight, one war machine of their
      choice may re-roll its first Misfire.
    - *The Casting Crucible.* The crucible pours clean once more. One Chaos
      Dwarf hero may be given a *forge-wrought weapon*: any magic weapon from
      the Chaos Dwarf list worth up to 25 points, at no cost.

    If all three mechanisms are Rekindled, the forge is wholly reclaimed and
    the Chaos Dwarfs also gain *50 points* towards the Lord upgrade of
    Round~4.
  ]

  #special-rule[What the Rot Keeps][
    Any mechanism that ends the battle *Consecrated* is lost to the forge for
    the rest of the campaign: its boon cannot be earned later, and the slaves
    chained to it are left to the Plaguefather. The Warriors of Chaos gain
    nothing from the campaign for holding it. Denying Hashut is reward
    enough.
  ]

  #to-be-decided[
    Round 4 of the campaign is the Lord upgrade round. Decide whether the
    boons above are the right size, whether the 50-point bonus for a full
    reclaim should stand, and whether the rebels of the Empire feel any of
    this: a reclaimed forge means Sigmarite slaves back under the whip.
  ]
]
