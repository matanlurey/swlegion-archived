import 'package:swlegion/database.dart';
import 'package:swlegion/swlegion.dart';
import 'package:test/test.dart';

void main() {
  final isValidId = RegExp(r'^[a-zA-Z0-9-\-]+$');
  test('every upgrade should have a valid unique ID', () {
    final allIds = Set<String>();
    for (final upgrade in upgrades) {
      final id = upgrade.id;
      expect(id, matches(isValidId));
      expect(allIds.add(id), isTrue, reason: 'Duplicate ID: $id');
    }
    expect(allIds, hasLength(upgrades.length));
  });

  test('upgrades should be compared purely based on ID', () {
    final upgradeA = Upgrade(
      type: UpgradeSlot.force,
      name: 'Force Sprint',
      id: 'force-sprint',
      points: 25,
    );
    final upgradeB = upgradeA.rebuild((b) => b..points = 26);
    expect(upgradeA, equals(upgradeB));
  });

  test('every unit should have a valid unique ID', () {
    final allIds = Set<String>();
    for (final unit in units) {
      final id = unit.id;
      expect(id, matches(isValidId));
      expect(allIds.add(id), isTrue, reason: 'Duplicate ID: $id');
    }
    expect(allIds, hasLength(units.length));
  });

  test('units should be compared purely based on ID', () {
    final unitA = Unit(
      rank: Rank.commander,
      miniatures: 1,
      type: UnitType.trooper,
      name: 'Gonk Droid',
      defense: DefenseDice.white,
      faction: Faction.lightSide,
      speed: 1,
      id: 'gonk-droid',
      wounds: 1,
      points: 20,
    );
    final unitB = unitA.rebuild((b) => b..points = 25);
    expect(unitA, equals(unitB));
  });
}
