import 'package:swlegion/catalog.dart';
import 'package:swlegion/holodeck.dart';
import 'package:swlegion/swlegion.dart';
import 'package:test/test.dart';

void main() {
  group('AttackPool', () {
    test('.totalDice()', () {
      final pool = AttackPool(
        attacker: Units.stormtroopers,
        defender: Units.rebelTroopers,
        weapons: [
          Weapons.e11BlasterRifle,
          Weapons.e11BlasterRifle,
          Weapons.e11BlasterRifle,
          Weapons.e11BlasterRifle,
          Weapons.dlt19HHeavyBlasterRifle,
        ],
      );
      expect(pool.totalDice(), {
        AttackDice.red: 2,
        AttackDice.black: 0,
        AttackDice.white: 4,
      });
    });
  });
}
