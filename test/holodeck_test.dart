import 'package:swlegion/database.dart';
import 'package:test/test.dart';

void main() {
  test('should return Upgrades valid for a given Unit', () {
    final validStormtrooperUpgrades = [
      Upgrades.concussionGrenades,
      Upgrades.dlt19Stormtrooper,
    ];

    expect(
      holodeck.upgradesForUnit(Units.stormtroopers),
      containsAll(validStormtrooperUpgrades),
      reason: 'Stormtroopers can use both these upgrades',
    );

    final validTrooperUpgrades = [
      Upgrades.z6Trooper,
    ];

    expect(
      holodeck.upgradesForUnit(Units.stormtroopers),
      isNot(containsAll(validTrooperUpgrades)),
      reason: 'Z6 trooper is unit restricted',
    );

    final validDarthVaderUpgrades = [
      Upgrades.forceChoke,
    ];

    expect(
      holodeck.upgradesForUnit(Units.lukeSkywalker),
      isNot(containsAll(validDarthVaderUpgrades)),
      reason: 'Force choke is faction restricted',
    );
  });

  test('should return the sum cost of a unit', () {
    final expected = [
      Units.stormtroopers.points,
      Upgrades.dlt19Stormtrooper.points,
      Upgrades.impactGrenades.points
    ].reduce((a, b) => a + b);
    expect(
      holodeck.costOfUnit(
        Units.stormtroopers,
        upgrades: [
          Upgrades.dlt19Stormtrooper,
          Upgrades.impactGrenades,
        ],
      ),
      expected,
    );
  });
}
