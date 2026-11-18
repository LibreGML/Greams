# Console API Ledger

Frozen against AoC2 smali (`Commands.smali`, `Game`, `Province`, `Civilization`, `DiplomacyManager`, `Player`, `CFG`).

## Old cheat constants (1:1)

| Cmd | Write | Notes |
|-----|-------|-------|
| p/e | +32500 | `0x7ef4` |
| w | army +10000 | `0x2710` (old toast lied +32500) |
| m | money +313408 | `0x4c840` + TOP refresh |
| j | diplo +7905 | `0x1ee1` (tech cap may clamp) |
| k | move + COST_OF_MOVE*50 | |
| t N | tech = clamp(N,1,1000)/100f | |
| f | fort=7 | |
| port | port=1 if level>=0 | coastal gate |
| tower | watchtower=1 | |
| x | declareWar(A,B,true) | silent fail on gates |
| h | Message_WeCanSignPeace only | NOT real peace |
| addciv money fix | setMoney(100) | after createScenario |

Land gate: active>=0 && !sea && wasteland<0. `w` only needs active>=0.

## FOG / DIFFICULTY

- FOG_OF_WAR: 0 Off, 1 Classic, 2 Discovery
- DIFFICULTY: 0..4

## Safe recipes (new)

### peace A B [truce]
1. require at-war or warId>=0
2. acceptPeaceOffer(A,B,truce 1..50 default 10)
3. prune War_GameData aggressors/defenders when no longer at war vs remaining
4. removeWarData if side empty
5. updateInGame_TOP_All

**BAN**: whitePeace alone.

### ally + A B
1. if at war → run peace first (or err)
2. acceptAllianceProposal(A,B)

### vassal + lord vassal
1. peace-clean wars involving vassal
2. setPuppetOfCivID(lord, false)
3. buildFogOfWar if player lord & FOG>0

### discover
1. setFogOfWar(all, true) for current player
2. buildMetProvincesAndCivs()

**BAN**: initFogOfWar; buildFogOfWar as "reveal all"; met before fog.

### set gov
1. validate ideology / canChangeToIdeology
2. clear election/reformation gates
3. ensure money/move thresholds
4. changeGovernmentType
5. TOP refresh

**BAN**: setIdeologyID alone.

### own / own annex
- occupy: setCivID(new, true)
- annex: setTrueOwner then setCivID(new, true); fix capital if needed

**BAN**: setCivID_Just; third-arg false.

### core +
addNewCore(civ, TURN_ID). **BAN** buildProvinceCore on lived provinces.

## Reject list

whitePeace-as-peace, force declareWar past alliance, ally while at war without peace, setIdeologyID alone, buildProvinceCore wipe, initFogOfWar, setCivID_Just, fake win, nextTurn/TURN_ID poke.

## Compatibility fixes vs old Commands

- addciv fog==2: setMetCivilization(id,true)+setFogOfWar(prov,true) instead of addMetCivilization(true) append
- honest numeric echo (real deltas)

## Mild boost (not billionaire mode)

- money: **add** +313408 (same as `add money`)
- move: **add** COST_OF_MOVE×50 (same as `add move`)
- tech INT: floor 100, else +25, soft cap 200 (display ≤2.0)
- diplo: fill to engine cap `85 + tech×85/4` (hard 500)
- manpower: **add** +25000

## Batch army

- `set army N *` / `fill army N` — all own land provinces set to N
- `add army [N] *` — all own land provinces add N (default N=10000)

## Help

- `h` directory only; `h 军队|资源|外交|国家|地图|宏` topic pages
