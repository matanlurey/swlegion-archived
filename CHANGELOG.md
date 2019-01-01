## 0.3.1

### Database

* Added Chewbacca Operative Expansion.
* Added Wookie Warriors Expansion.
* Fixed the ID of Battle Meditation.

### Holodeck

* `costOfUnit` now treats `upgrades` as a `@required` named parameter.
* Added `totalMiniatures(unit, {Iterable<Reference<Upgrade>> upgrades})`.

## 0.3.0

### Data Model

* Corrects `Upgrade` to only compare based on `.id`.
* `Indexable.toRef` is now optional, as an `Indexable` is also a `Reference`.

### Database

* Normalized all enum IDs as `lower-hyphenated-case`.
* Added `.from` to every enum, to use instead of `valueOf`.
* Added `.toString()` to `Reference` to aid in debugging.
* Added missing `.isUnique = true` for commanders/operatives.
* Upgrade emergency stims now has a corrected ID of `emergency-stims`.
* Created `Commands`, `Units`, `Upgrades`, `Weapons` classes for convenience:

```dart
import 'package:swlegion/database.dart';

void main() {
  print(Units.stormtroopers.points); // 44
}
```

### Mechanics

* Added a new `class`, `Holodeck`, for game logic and helper functionality that
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

* Moved `Army` and `ArmyUnit` out of this package.
* `CommandCard` was added.
* Replaced `*Key` instances with a single `Reference<T>` instance.
  * `CommandCard`, `Unit`, `Upgrade` all now implement `Indexable<T>`.
  * `Upgrade`'s `.restrictedToUnit` is now a `BuiltSet<Reference<Unit>>`.

### Database

* Added `'Emergency Stims'` (Gear), which was accidentally omitted.
* Fixed the cost of `'Estmeed Leader'` (Command), which is 5 points not 10.
* Fixed the ID of `'Esteemed Leader'`, which was mis-spelled.
* Added `CommandCard`(s) for every existing commander and operative.

## 0.1.0

* Initial stable release.
