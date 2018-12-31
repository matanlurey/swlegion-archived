import 'package:swlegion/database.dart';

// Prints the name, points, and valid upgrades for a few units.
void main() {
  final researchUnits = [
    Units.emperorPalpatine,
    Units.imperialRoyalGuards,
    Units.scoutTroopersStrikeTeam,
  ];

  for (final unit in researchUnits) {
    print('${unit.name} (${unit.points}): ');
    for (final upgrade in holodeck.upgradesForUnit(unit)) {
      print('  * ${upgrade.name} (${upgrade.points})');
    }
  }
}
