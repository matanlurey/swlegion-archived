### Catalog

- Store `text` fields with trailing and preceding whitespace removed.
- Fix mis-spelling in the ID of `Imperial Discipline` and `Z6 Jetpack Launcher`.
- Fix mis-spelling in the ID of `unhindered` and `Sabine Wren`.
- Fix `Chewbacca`'s `.activations` for his command cards.
- Added `Bossk`, `Rebel Pathfinders`, and started on `Sabrine Wren`.
- Added `Director Krennic`, `Imperial Death Troopers`, and the assault tank.
- Added `UpgradeSlot.crew`.
- Added `UnitKeyword.kLightTransport1Open`.
- Added cards and upgrades related to the `X-34 Landspeeder`.

### Data Model

- Added meaningful `toString()`'s to `Wave` and `...Keyword` enum-like classes.
- `Upgrade` now has a `isUnique` field (for `Pao`, `Bistan`, `The Darksaber`).
- `Faction` added `Faction.neutral`, replacing the need for a sentinel `null`.
- `CommandCard`:
  - `.unitsActivated` renamed to `.activated`.
  - `.factionRequired` renamed to `.faction`.
- All the `...Keyword` classes now extend a base `Keyword` class.
- Renamed `UpgradeSlot.blaster` to `.armament`.

## 0.4.0

Large set of breaking changes and new content!

### Catalog

- Renamed `database.dart` to `catalog.dart`. See the top-level field `catalog`.

### Data Model

- Added `surge_override` (`AttackSurge`) field to `Weapon`.
- Significant data model change for `Keyword`, now split into 3 new classes.
- Changed the default `serializers` to always use standard JSON, fixed encoding
  issues that would cause issues with Firebase or other database formats that
  expect valid JSON. See `lib/catalog.json` for example output. Use the exported
  `CustomJsonPlugin` instead of `StandardJsonPlugin`.
- Added `ForceAlignment` (instead of just `Faction`).

## Holodeck

- `Holodeck` is now a utility class for executing simulations.
- The existing database structure and reference lookups were moved to `Catalog`.

## 0.3.1

### Database

- Added Chewbacca Operative Expansion.
- Added Wookie Warriors Expansion.
- Fixed the ID of Battle Meditation.
- Added `keywords` to upgrades that provide them on active or passively.

### Holodeck

- `costOfUnit` now treats `upgrades` as a `@required` named parameter.
- Added `totalMiniatures(unit, {Iterable<Reference<Upgrade>> upgrades})`.

## 0.3.0

### Data Model

- Corrects `Upgrade` to only compare based on `.id`.
- `Indexable.toRef` is now optional, as an `Indexable` is also a `Reference`.

### Database

- Normalized all enum IDs as `lower-hyphenated-case`.
- Added `.from` to every enum, to use instead of `valueOf`.
- Added `.toString()` to `Reference` to aid in debugging.
- Added missing `.isUnique = true` for commanders/operatives.
- Upgrade emergency stims now has a corrected ID of `emergency-stims`.
- Created `Commands`, `Units`, `Upgrades`, `Weapons` classes for convenience:

```dart
import 'package:swlegion/database.dart';

void main() {
  print(Units.stormtroopers.points); // 44
}
```

### Mechanics

- Added a new `class`, `Holodeck`, for game logic and helper functionality that
  is not strictly tied to the database nor to the serialized JSON model(s):

```dart
import 'package:swlegion/database.dart';
import 'package:swlegion/swlegion.dart';

void main() {
  // Can create a `Holodeck` using the provided data:
  final customDeck = Holodeck(
    commands: commands,
    units: units,
    upgrades: upgrades,
  );

  // Or use the default `Holodeck` directly.
  print(holodeck.validUpgradesForUnit(Units.stormtroopers));
}
```

## 0.2.0

### Data Model

- Moved `Army` and `ArmyUnit` out of this package.
- `CommandCard` was added.
- Replaced `*Key` instances with a single `Reference<T>` instance.
  - `CommandCard`, `Unit`, `Upgrade` all now implement `Indexable<T>`.
  - `Upgrade`'s `.restrictedToUnit` is now a `BuiltSet<Reference<Unit>>`.

### Database

- Added `'Emergency Stims'` (Gear), which was accidentally omitted.
- Fixed the cost of `'Estmeed Leader'` (Command), which is 5 points not 10.
- Fixed the ID of `'Esteemed Leader'`, which was mis-spelled.
- Added `CommandCard`(s) for every existing commander and operative.

## 0.1.0

- Initial stable release.
