#import "template.typ": *

#show: scenario.with(
  title: [The King's Tribute],
  round: [Session 5 · Battle One],
  sides: (
    ([Chaos Dwarfs],),
    ([Tomb Kings],),
  ),
  intro: [
    As the Chaos Dwarfs muster their forces to crush the Sigmarite Uprising,
    an ancient Tomb King has emerged from the southern wastes.

    Claiming that the lands once belonged to his forgotten kingdom, the Tomb
    King demands tribute in the form of gold, weapons and precious metals.
    The Chaos Dwarfs, unwilling to bow before a long-dead monarch, meet his
    demands with contempt.

    Enraged by their defiance, the Tomb King gathers his undead legions and
    marches upon a Chaos Dwarf military supply depot. Here, vast quantities
    of weapons, enchanted materials and gold have been assembled in
    preparation for the coming confrontation with the rebellious slaves.

    The Chaos Dwarfs cannot afford to lose these resources. An army is
    dispatched to intercept the invading legions and protect the supplies
    vital to their war effort.

    The Tomb King has no knowledge of, nor interest in, the Sigmarite
    Uprising. He seeks only to punish those who have defied his authority
    and claim the tribute he believes is rightfully his.
  ],
)

#armies[
  *1,500 points* per side: Chaos Dwarfs against Tomb Kings.

  Otherwise, campaign list rules apply:
  - No Lords
  - Up to 15% rare
  - Hero budget: 350 points, excluding magic items
]

#battlefield(draft: true)[
  The table is 6 by 4 feet, 72" by 48". The battle takes place on the
  barren plains of the Dark Lands, near a Chaos Dwarf military supply depot.
  Scatter rocky formations, barren hills and industrial ruins across the
  battlefield.

  #special-rule[The Supply Stockpiles][
    Three supply stockpiles are placed at equal intervals along the
    centreline of the battlefield. They are the scenario's three objectives.
    All three are of equal value and follow the same rules.

    #table(
      columns: (auto, 1fr),
      align: (left, left),
      table.header[Objective][Contents],
      [*I · The Weapons Stockpile*], [Crates of newly forged weapons, armour
        and military equipment intended for the coming confrontation with
        the Sigmarite rebels.],
      [*II · The Arcane Stockpile*], [Enchanted metals, magical components
        and rare materials gathered for the rituals and daemon-forges of the
        Sorcerer-Prophets.],
      [*III · The War Treasury*], [Gold, precious metals and other valuables
        intended to finance the Chaos Dwarf war effort and secure additional
        reinforcements.],
    )
  ]
]

#deployment[
  Follow the standard rules for deployment.
]

#first-turn[
  Follow the standard rules for first turn.
]

#game-length[
  The battle lasts six turns.
]

#victory(draft: true)[
  #special-rule[Controlling Objectives][
    Control is checked at the end of the battle. Any non-fleeing unit is
    eligible, except a lone character: lone characters cannot control or
    contest objectives.

    - An objective is *controlled* by a side that has an eligible unit within
      6" of it, while no eligible enemy unit is within the same distance.
    - If both sides have eligible units within 6", the objective is
      *contested*.
    - An objective with no eligible units within 6" remains *unclaimed*.
  ]

  The side controlling the most objectives at the end of the battle wins.
  If both sides control an equal number of objectives, standard victory
  points decide the winner.
]

#special-rules[
  Standard rules apply.
]

#aftermath(draft: true)[
  The outcome of the battle directly influences the final confrontation
  between the Chaos Dwarfs and the Sigmarite Uprising.

  #special-rule[The Tribute][
    Each objective is resolved on its own:

    #table(
      columns: (auto, 1fr),
      align: (left, left),
      table.header[Objective][Campaign consequence],
      [*Controlled by the Chaos Dwarfs*], [The supplies are secured. The
        Chaos Dwarfs gain one advantage to use in the final battle against
        the uprising.],
      [*Controlled by the Tomb Kings*], [The supplies are seized and carried
        away as tribute. Their loss grants the Sigmarite Uprising one
        advantage in the final battle.],
      [*Contested or unclaimed*], [Neither faction gains a campaign
        advantage.],
    )

    A maximum of three campaign advantages can be awarded through this
    scenario.
  ]

  #to-be-decided[
    What an advantage grants in the final battle, and whether each
    stockpile gives its own kind of advantage.
  ]
]
