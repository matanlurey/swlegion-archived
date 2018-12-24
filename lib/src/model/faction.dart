import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'faction.g.dart';

/// Represents possible factions in the game.
class Faction extends EnumClass {
  /// Light side faction.
  @BuiltValueEnumConst(wireName: 'light-side')
  static const Faction lightSide = _$lightSide;

  /// Dark side faction.
  @BuiltValueEnumConst(wireName: 'dark-side')
  static const Faction darkSide = _$darkSide;

  const Faction._(String name) : super(name);

  @override
  String get name => _$FactionSerializer._toWire[super.name];

  /// Support for serializing instances of [Faction].
  static Serializer<Faction> get serializer => _$factionSerializer;

  /// All known values of [Faction].
  static BuiltSet<Faction> get values => _$values;

  /// Parses and returns [name] into the cooresponding [Faction] value.
  ///
  /// Throws [ArgumentError] if no match is found.
  static Faction from(String name) {
    return _$valueOf(_$FactionSerializer._fromWire[name]);
  }

  /// **WARNING**: Prefer [from].
  @Deprecated('Use "Faction.from" instead.')
  static Faction valueOf(String name) => _$valueOf(name);
}
