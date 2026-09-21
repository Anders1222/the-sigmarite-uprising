#import "template.typ": *

#show: scenario.with(
  title: [Slay the Masters],
  round: [Prologue],
  art: "art/prologue-the-first-battle.png",
  sides: (
    ([Chaos Dwarfs], [The Slavers]),
    ([The Empire], [The Uprising]),
  ),
  intro: [
    It began as a lone prayer in the darkness, calling out to mighty Sigmar.
    It spread, murmurs rippling through the throng of slaves sweating in the
    great forges, the hatred for their cruel overlords fuelling the call for
    freedom, for revenge. The usually so seasoned Chaos Dwarf slavers
    underestimated the danger, only realising their error when their foul
    blood hit the sand. Shouts sprung from the depths and the sound of battle
    and brutality filled the tunnels. Finally, a bell rung like thunder in
    the mines, reaching the black citadel perched atop the chasm. Its
    terrible master rose from his throne and assembled his warriors to strike
    down this most heinous of things: a slave revolt.
  ],
)

#armies[
  *1,200 points* per side: Chaos Dwarfs against the Empire.

  The Empire may not field any Special or Rare units. The slaves go to war
  with whatever they had to hand when the bell rang.
]

#battlefield[
  The forge floor beneath the black citadel. The two deployment zones are
  12" deep, one along each long table edge.

  Three buildings representing *Armouries* are placed evenly between the two
  deployment zones, the *Central Armoury* in the middle being slightly
  larger than the other two. Four *Exposed Pipelines* are placed evenly
  across the table, two in each deployment zone. A small *Valve Station* is
  placed next to the Central Armoury, on the Empire side of it.

  The rest of the battlefield remains open apart from a few obstacles.

  #block(
    width: 100%,
    stroke: 1pt + gold,
    inset: 3pt,
    fill: parchment-dark,
    image("art/prologue-the-first-battle-map.png", width: 100%),
  )
]

#deployment[
  The Chaos Dwarf player deploys their entire army first, apart from any
  *Taskmasters*.

  The Empire player then deploys their entire army.

  Finally, the Chaos Dwarf player deploys their Taskmasters: one unit, with
  at most one character included, anywhere within 3" of the Central Armoury
  and at least 12" from any enemy unit. This unit represents the guards
  watching over the slaves when the revolt begins.
]

#first-turn[
  The Empire takes the first turn.
]

#game-length[
  The game lasts for six turns, or until one army has been completely wiped
  out, whichever comes first.
]

#victory[
  Follow the normal rules for determining the victor.
]

#special-rules[
  #special-rule[Armouries][
    These buildings are filled with various weapons that might prove useful
    to the uprising. Whenever an Empire unit makes contact with an Armoury,
    that unit may immediately be upgraded to any Special choice of the Empire
    player's choosing, with the following limitations:

    - The unit must be upgraded to a Special choice of the same unit type
      (cavalry can only become cavalry, for example).
    - If the unit has a ranged weapon, the upgraded unit must also have a
      ranged option.

    The unit may take any non-magical upgrade the new unit would normally
    have access to. The model count stays the same. Each Armoury can only be
    used once.
  ]

  #special-rule[Heavy Weaponry][
    Before deployment, choose one Armoury at random. This Armoury contains a
    random Empire artillery piece. Roll now to determine which one.

    An Empire unit making contact with this Armoury may sacrifice three
    models from the unit to take control of the war machine, deploying it
    within 3" of both the unit and the Armoury.
  ]

  #special-rule[Pressure Valves][
    The forges are powered by massive steam engines requiring quite a few
    pipes. The slaves intend to turn this system against their masters.

    If an Empire unit is within 3" of the Valve Station at the start of the
    Shooting phase, it may choose to use it instead of making a shooting
    attack. Place the teardrop-shaped template anywhere on the battlefield
    with the narrow end touching an Exposed Pipeline. Any model hit by the
    template suffers a Strength 2 hit with no armour saves allowed.
  ]
]
