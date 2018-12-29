### Data Model

* Corrects `Upgrade` to only compare based on `.id`.

### Database

* Normalized all enum IDs as `lower-hyphenated-case`.
* Added `.from` to every enum, to use instead of `valueOf`.
* Added `.toString()` to `Reference` to aid in debugging.
* Added missing `.isUnique = true` for commanders/operatives.
* Upgrade emergency stims now has a corrected ID of `emergency-stims`.

## 0.2.0

### Data Model

* Moved `Army` and `ArmyUnit` out of this package.
* `CommandCard` was added.
* Replaced `*Key` instances with a single `Reference<T>` instance.
  * `CommandCard`, `Unit`, `Upgrade` all now implement `Indexable<T>`.

### Database

* Added `'Emergency Stims'` (Gear), which was accidentally omitted.
* Fixed the cost of `'Estmeed Leader'` (Command), which is 5 points not 10.
* Fixed the ID of `'Esteemed Leader'`, which was mis-spelled.
* Added `CommandCard`(s) for every existing commander and operative.

## 0.1.0

* Initial stable release.
