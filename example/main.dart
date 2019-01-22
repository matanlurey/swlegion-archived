import 'package:swlegion/catalog.dart';
import 'package:swlegion/holodeck.dart';
import 'package:swlegion/swlegion.dart';

// Prints the name, points, and valid upgrades for a few units.
void main() {
  print('=' * 80);
  printNamePointsAndUpgrades();
  print('=' * 80);
  simulateAttackWithTroopers();
}

void printNamePointsAndUpgrades() {
  final researchUnits = [
    Units.emperorPalpatine,
    Units.imperialRoyalGuards,
    Units.scoutTroopersStrikeTeam,
  ];

  for (final unit in researchUnits) {
    print('${unit.name} (${unit.points}): ');
    for (final upgrade in catalog.upgradesForUnit(unit)) {
      print('  * ${upgrade.name} (${upgrade.points})');
    }
  }
}

void simulateAttackWithTroopers() {
  final holodeck = Holodeck();
  final timer = Stopwatch()..start();
  var sumWounds = 0;
  for (var i = 0; i < 10000; i++) {
    final z6Attack = holodeck.rollAttacks(
      const [
        AttackDice.white,
        AttackDice.white,
        AttackDice.white,
        AttackDice.white,
        AttackDice.white,
        AttackDice.white,
        AttackDice.black,
        AttackDice.black,
        AttackDice.black,
        AttackDice.black,
      ],
      AttackSurge.hit,
    );
    final wounds = holodeck.simulateWounds(
      z6Attack,
      // Rebel Troopers + Z6
      const AttackPool(dice: {
        AttackDice.white: 6,
        AttackDice.black: 4,
      }),
      // Stormtroopers
      const DefensePool(
        dice: DefenseDice.red,
      ),
    );
    sumWounds += wounds;
  }
  final median = sumWounds / 10000;
  print(
    'Wounds (10000 Sample) of Z6 -> Stormtroopers: ${median.toStringAsFixed(1)} in ${timer.elapsedMilliseconds}ms',
  );
}
