## Data Model

* `Army`: Added `.maxPoints` and `.withinMaxPoints`.
* `Unit` and `Upgrade` now are only compared based on their `.id` field.
* `ArmyUnit`: `.units` and `.upgrades` now are `UnitKey` and `UpgradeKey`s.
* `ArmyUnit`: Removed `.points`, which can no longer be computed locally.
* `Army`: Removed `.points`, which can no longer be computed locally.
* `CommandCard`: Added.

## Database

* Added `'Emergency Stims'` (Gear), which was accidentally omitted.
* Fixed the cost of `'Estmeed Leader'` (Command), which is 5 points not 10.
* Fixed the ID of `'Esteemed Leader'`, which was mis-spelled.
* Added `CommandCard`(s) for every existing commander and operative.

## 0.1.0

* Initial stable release.
