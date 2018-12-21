import 'package:swlegion/database.dart';
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

  test('every unit should have a valid unique ID', () {
    final allIds = Set<String>();
    for (final unit in units) {
      final id = unit.id;
      expect(id, matches(isValidId));
      expect(allIds.add(id), isTrue, reason: 'Duplicate ID: $id');
    }
    expect(allIds, hasLength(units.length));
  });
}
