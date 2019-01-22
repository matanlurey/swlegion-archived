import 'package:built_value/serializer.dart';
import 'package:swlegion/swlegion.dart';
import 'package:test/test.dart';

void main() {
  _test<UnitKeyword>(
    UnitKeyword.values,
    UnitKeyword.serializer,
    (v) => v.displayName,
    (v) => v.description,
  );

  _test<UpgradeKeyword>(
    UpgradeKeyword.values,
    UpgradeKeyword.serializer,
    (v) => v.displayName,
    (v) => v.description,
  );

  _test<WeaponKeyword>(
    WeaponKeyword.values,
    WeaponKeyword.serializer,
    (v) => v.displayName,
    (v) => v.description,
  );
}

/// Ensures every Keyword has:
///
/// 1. A non-empty description.
/// 2. A unique ID.
/// 3. Can be serialized/deserialized.
void _test<T extends Indexable<T>>(
  Iterable<T> values,
  Serializer<T> serializer,
  String Function(T) name,
  String Function(T) describe,
) {
  group('$T', () {
    for (final word in values) {
      test('${name(word)} should be valid', () {
        expect(describe(word), isNotEmpty);

        final encoded = serializers.serializeWith(serializer, word);
        expect(encoded, word.id);

        final decoded = serializers.deserializeWith(serializer, encoded);

        expect(word, decoded);
        expect(word.id, _isValidId);
      });
    }

    test('should have unique IDs', () {
      expect(
        values.map((v) => v.id).toSet(),
        hasLength(values.length),
      );
    });
  });
}

final _isValidId = matches(RegExp(r'^[a-z0-9-\-]+$'));
