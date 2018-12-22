* `Army`: Added `.maxPoints` and `.withinMaxPoints`.
* `Unit` and `Upgrade` now are only compared based on their `.id` field.
* `ArmyUnit`: `.units` and `.upgrades` now are `UnitKey` and `UpgradeKey`s.
* `ArmyUnit`: Removed `.points`, which can no longer be computed locally.
* `Army`: Removed `.points`, which can no longer be computed locally.

## 0.1.0

* Initial stable release.
