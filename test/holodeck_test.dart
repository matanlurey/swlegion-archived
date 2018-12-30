import 'package:swlegion/database.dart';
import 'package:swlegion/swlegion.dart';
import 'package:test/test.dart';

void main() {
  test('should return Upgrades valid for a given Unit', () {
    // Ensure Unit can pretend to be a Reference<Unit>.
    expect(Units.stormtroopers, equals(Units.stormtroopers.toRef()));
    final set = Set<Reference<Unit>>.from(<Reference<Unit>>[
      Units.stormtroopers.toRef(),
    ]);
    expect(set, contains(Units.stormtroopers));

    expect(
      holodeck.upgradesForUnit(Units.stormtroopers),
      containsAll(<Upgrade>[
        Upgrades.dlt19Stormtrooper,
        Upgrades.stormtrooper,
        Upgrades.emergencyStims,
        Upgrades.environmentalGear,
        Upgrades.grapplingHooks,
        Upgrades.reconIntel,
        Upgrades.targetingScopes,
        Upgrades.concussionGrenades,
        Upgrades.fragmentationGrenades,
        Upgrades.impactGrenades,
      ]),
    );
  });
}
