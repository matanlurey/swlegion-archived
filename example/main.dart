import 'package:swlegion/catalog.dart';

// Prints the name, points, and valid upgrades for a few units.
void main() {
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
