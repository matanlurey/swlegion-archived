import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'defense_dice.g.dart';

/// Represents possible defence dice for a given attack of weapon (D6).
///
/// See http://starwarslegion.wikia.com/wiki/Dice.
class DefenseDice extends EnumClass {
  static const _sides = {
    white: [
      DefenseDiceSide.block,
      DefenseDiceSide.surge,
      DefenseDiceSide.blank,
      DefenseDiceSide.blank,
      DefenseDiceSide.blank,
      DefenseDiceSide.blank,
    ],
    red: [
      DefenseDiceSide.block,
      DefenseDiceSide.block,
      DefenseDiceSide.block,
      DefenseDiceSide.surge,
      DefenseDiceSide.blank,
      DefenseDiceSide.blank,
    ],
  };

  /// White defense dice.
  @BuiltValueEnumConst(wireName: 'WHITE')
  static const DefenseDice white = _$white;

  /// Red defense dice.
  @BuiltValueEnumConst(wireName: 'RED')
  static const DefenseDice red = _$red;

  const DefenseDice._(String name) : super(name);

  /// Sides of the dice.
  List<DefenseDiceSide> get sides => _sides[this];

  /// Support for serializing instances of [DefenseDice].
  static Serializer<DefenseDice> get serializer => _$defenseDiceSerializer;

  /// All known values of [DefenseDice].
  static BuiltSet<DefenseDice> get values => _$values;

  /// Parses and returns [name] into the cooresponding [DefenseDice] value.
  ///
  /// Throws [ArgumentError] if no match is found.
  static DefenseDice valueOf(String name) => _$valueOf(name);
}

/// Represents possible sides to a [DefenseDice].
enum DefenseDiceSide {
  /// A block.
  block,

  /// A surge icon.
  surge,

  /// A blank side.
  blank,
}
