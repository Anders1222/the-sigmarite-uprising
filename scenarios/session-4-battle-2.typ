#import "template.typ": *

#show: scenario.with(
  title: [The Will to Wield It],
  round: [Session 4 · Battle Two],
  sides: (
    ([The Empire],),
    ([Lizardmen],),
  ),
  intro: [
    The Hashut-worshippers treat their land with little care, and everywhere
    the earth is cracked, carved and dug through. Monstrosities from within
    and infernal fire are the usual results, but on rare occasions they
    uncover more benevolent powers. The masters reluctantly taught us to
    abuse and wield this power in their service, but now it is for us to use
    for our own salvation. Great earthen scars brim with arcane energies
    surely sent by Sigmar to aid us in our struggle. But again we are
    assailed by misguided lizards with their own unclear designs for the
    proper use of these leylines. Their purpose matters little. Our cause is
    above theirs, now and always.
  ],
)

#armies[
  *1,700 points* per side: the Empire against Lizardmen.

  The Lizardmen army may take up to *100 points* of magic items on top of
  its 1,700 points.

  Otherwise, campaign list rules apply:
  - No Lords
  - Up to 15% rare
  - Hero budget: 350 points, excluding magic items
]

#battlefield[
  The table is 6 by 4 feet, 72" by 48". Apart from the fissures, the
  battlefield has some hills, cliffs and maybe some ruins, but no forests.

  #special-rule[Leyline Fissures][
    Three open leyline fissures cross the battlefield. Place them
    equidistant from each other and as close to the centre of the table as
    possible, at the starting locations shown on the map. Then roll a
    scatter dice and an artillery dice for each fissure to find where it
    ends up. On a Hit it remains in place.

    On a Misfire the fissure spawns an additional fissure. Re-roll the
    artillery dice to determine the final placement of the first fissure,
    then roll the scatter dice and the artillery dice again to place the new
    fissure, measuring from the first fissure's final position. A fissure
    spawned this way cannot spawn more fissures.

    Fissures are impassable terrain with a Line of Sight value of 0.
  ]

  #block(
    width: 100%,
    stroke: 1pt + gold,
    inset: 3pt,
    fill: parchment-dark,
    image("art/session-4-battle-2-map.png", width: 100%),
  )
]

#deployment[
  Each side deploys within 12" of its long table edge, as shown on the map.

  Before deployment, the sides roll off. The winner chooses either to take
  the first turn or to choose their deployment zone.

  The side that takes the first turn must deploy its entire army first.
]

#first-turn[
  The side that takes the first turn is settled by the roll-off before
  deployment.
]

#game-length[
  The battle lasts six turns.
]

#victory[
  The side with the most power in its Energy Cache at the end of the game
  wins the battle.
]

#special-rules[
  #special-rule[Energy Cache][
    Each side starts the battle with *3 power* in its Energy Cache.

    At the start of any turn, a side may spend power from its Energy Cache
    to empower its army. Once a side has declared that it will use an
    ability, that choice is binding.

    #table(
      columns: (auto, auto, 1fr),
      align: (left, center, left),
      table.header[Ability][Power][Effect],
      [*Swift Advance*], [2], [Double the Movement value of one unit until
        the start of the side's next turn. This can take its Movement above
        10.],
      [*Unlimited Power*], [4], [Spells cast this turn cannot be
        dispelled.],
      [*Flurry of Blows*], [3], [One unit of the side's choice gets +1
        Attack in close combat this turn.],
      [*Uncanny Aim*], [4], [One unit of the side's choice gets +2 Ballistic
        Skill this turn.],
      [*Thunderstorm*], [6], [Place the small round template anywhere on the
        battlefield and resolve it as if the area had just been hit by the
        _Thorsen's Thunderstorm_ spell from the Lore of Heavens.],
    )
  ]

  #special-rule[Leyline Siphoning][
    Any unit that did not march this turn and stands within 6" of a Leyline
    Fissure may siphon power at the end of its Movement phase. Roll a D3 for
    each fissure in range and add that much power to its army's Energy
    Cache.

    If the unit contains a character that generates power dice, it may
    re-roll the result, but must accept the second result.
  ]

  #special-rule[Siphon Power][
    Every Wizard knows this spell in addition to any other spells they have.

    *Siphon Power* (cast on 5+). A conveyance spell with a range of 6" that
    can only target Leyline Fissures. The Wizard immediately adds another
    D6 power to their army's Energy Cache for each Leyline Fissure within
    range of the spell. Any miscast caused by this spell automatically
    causes a Loss of Power.
  ]
]

#aftermath[
  #special-rule[Chosen of Sigmar][
    If the Empire wins the battle, its army general is upgraded to an
    *Arch Lector*.

    The Arch Lector also gains the *Chosen of Sigmar* special rule: any unit
    of Greatswords the Arch Lector joins at the start of the battle may be
    upgraded with +1 Strength and +1 Toughness for 2 points per model.
  ]
]
