import 'package:swlegion/database.dart';
import 'package:swlegion/swlegion.dart';
import 'package:test/test.dart';

void main() {
  final isValidId = RegExp(r'^[a-z0-9-\-]+$');

  test('every enum should have a valid unique ID', () {
    final everyIdIsValid = everyElement(matches(isValidId));
    expect(AttackDice.values.map((d) => d.name), everyIdIsValid);
    expect(AttackSurge.values.map((d) => d.name), everyIdIsValid);
    expect(DefenseDice.values.map((d) => d.name), everyIdIsValid);
    expect(Faction.values.map((d) => d.name), everyIdIsValid);
    expect(Keyword.values.map((d) => d.name), everyIdIsValid);
    expect(Rank.values.map((d) => d.name), everyIdIsValid);
    expect(UnitType.values.map((d) => d.name), everyIdIsValid);
    expect(UpgradeSlot.values.map((d) => d.name), everyIdIsValid);
  });

  test('every command should have a valid unique ID', () {
    final allIds = Set<String>();
    for (final card in allCommands) {
      final id = card.id;
      expect(id, matches(isValidId));
      expect(allIds.add(id), isTrue, reason: 'Duplicate ID: $id');
    }
    expect(allIds, hasLength(allCommands.length));
  });

  test('commands should be compared purely based on ID', () {
    final commandA = CommandCard(
      id: 'command-a',
      name: 'Command A',
      unitsActivated: '',
      pips: 1,
    );
    final commandB = commandA.rebuild((b) => b..name = 'Command B');
    expect(commandA, equals(commandB));
  });
  test('every upgrade should have a valid unique ID', () {
    final allIds = Set<String>();
    for (final upgrade in allUpgrades) {
      final id = upgrade.id;
      expect(id, matches(isValidId));
      expect(allIds.add(id), isTrue, reason: 'Duplicate ID: $id');
    }
    expect(allIds, hasLength(allUpgrades.length));
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
    for (final unit in allUnits) {
      final id = unit.id;
      expect(id, matches(isValidId));
      expect(allIds.add(id), isTrue, reason: 'Duplicate ID: $id');
    }
    expect(allIds, hasLength(allUnits.length));
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
