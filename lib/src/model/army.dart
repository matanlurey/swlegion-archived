import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'army.g.dart';

/// Represents a collection of units (a list) as an army.
abstract class Army implements Built<Army, ArmyBuilder> {
  /// Support for serializing instances of [Army].
  static Serializer<Army> get serializer => _$armySerializer;

  factory Army(void Function(ArmyBuilder) build) = _$Army;
  Army._();
}
