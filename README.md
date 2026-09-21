# The Sigmarite Uprising

**Campaign site: <https://anders1222.github.io/the-sigmarite-uprising/>**

*In the ash-choked valleys of the Dark Lands, the Chaos Dwarfs work their slaves to death in the shadow of the great furnaces. For generations the sons of the Empire have laboured in chains, and their faith in Sigmar was the only fire the Dawi-Zharr could not smother.*

*That fire has caught.*

*What begins as a desperate revolt, men with stolen tools and borrowed courage, becomes something the slavers cannot crush. Thirteen battles will decide whether the Sigmarite Uprising ends in freedom, or in the smelting-pits. The hammer is raised. The chains are straining.*

---

## The War

The Chaos Dwarfs, the Dawi-Zharr, worshippers of the bull-god Hashut, hold the forges and the whip. The Empire slaves, the **Sigmarites**, have only their faith, their numbers, and whatever they can tear from their masters' hands. This is an uprising: the rebels begin poorly armed and must seize better equipment as the war grinds on.

**Format.** A hero-driven narrative campaign. Each player fields a warband of **Heroes only**, no rank-and-file, built to a **350-point** budget, with up to **15% rare** and a single magic item worth no more than **25 points**.

**The cost of failure is real.** When a hero falls in battle, roll a D6. On a **1** they are dead, gone from the campaign for good. On anything else, they live to fight another day.

**The road ahead.** Thirteen battles across seven rounds. A prologue and tutorial clash open the war; from there the rebels gather magic items, seek allies, raise a lord to lead them, and press toward a final showdown, before an epilogue settles the fate of those left standing.

---

## The Campaign

This is a **Warhammer Fantasy Battles** narrative campaign using the Warhammer Armies Project (WAP) rules. Five players. Storytelling is collaborative: scenarios and consequences are decided together between sessions, based on what happened on the table.

**Status:** The first battle has been fought. The uprising has begun.

---

## For the Players

Everything is published on the [campaign site](https://anders1222.github.io/the-sigmarite-uprising/): scenario sheets, battle reports, army sheets and the campaign reference, each as a PDF in a colour edition and a print-friendly edition.

This repository is the living record of the campaign. `Campaign Reference.md` is the authoritative campaign record; the scenarios, battle reports and warband rosters live alongside it.

**To contribute:** edit files on GitHub directly, or clone the repository and work locally. If you are unsure how, ask Daniel.

### What lives where

- `scenarios/` · scenario sheets, written in [Typst](https://typst.app/), all sharing `scenarios/template.typ`. Cover artwork and battlefield maps are under `scenarios/art/`.
- `reports/` · battle reports, one per scenario, with table photographs under `reports/photos/`.
- `factions/<name>/army.typ` · army sheets, one per player, updated after every battle as heroes gain wounds, experience and scavenged gear.
- `manifest.json` · drives the site: factions, scenarios, PDF paths, cover art and status.
- `Campaign Reference.md` · the campaign rules, standings and session log.

Each play session has **two scenarios and two corresponding battle reports**, named `session-<n>-battle-<m>.typ` and `session-<n>-battle-<m>-report.typ`. On every push to `main`, a GitHub Actions workflow compiles every `.typ` file to PDF in both editions and deploys the site; the PDFs are not committed to the repository.

To add a scenario: copy an existing `.typ` file in `scenarios/`, write the battle, add a report stub under `reports/`, and add an entry to `manifest.json`. Battle reports appear on the site once the scenario's status is `completed`.

To preview locally: install Typst (`winget install --id Typst.Typst`), run `.\build.ps1` to compile the PDFs, then serve the folder (e.g. `python -m http.server`).

---

*Sigmar wills it. Break the chains.*
