import 'package:swlegion/swlegion.dart';
import 'package:test/test.dart';

/// Ensures every Keyword has a non-empty description.
void main() {
  for (final keyword in Keyword.values) {
    test('${keyword.name}', () {
      expect(keyword.description, isNotEmpty);
    });
  }
}
