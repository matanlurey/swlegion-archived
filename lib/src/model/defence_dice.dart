import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'defence_dice.g.dart';

/// Represents possible defence dice for a given attack of weapon (D6).
///
/// See http://starwarslegion.wikia.com/wiki/Dice.
class DefenceDice extends EnumClass {
  static const _sides = {
    white: [
      DefenceDiceSide.block,
      DefenceDiceSide.surge,
      DefenceDiceSide.blank,
      DefenceDiceSide.blank,
      DefenceDiceSide.blank,
      DefenceDiceSide.blank,
    ],
    red: [
      DefenceDiceSide.block,
      DefenceDiceSide.block,
      DefenceDiceSide.block,
      DefenceDiceSide.surge,
      DefenceDiceSide.blank,
      DefenceDiceSide.blank,
    ],
  };

  /// White defence dice.
  @BuiltValueEnumConst(wireName: 'WHITE')
  static const DefenceDice white = _$white;

  /// Red defence dice.
  @BuiltValueEnumConst(wireName: 'RED')
  static const DefenceDice red = _$red;

  const DefenceDice._(String name) : super(name);

  /// Sides of the dice.
  List<DefenceDiceSide> get sides => _sides[this];

  /// Support for serializing instances of [DefenceDice].
  static Serializer<DefenceDice> get serializer => _$defenceDiceSerializer;

  /// All known values of [DefenceDice].
  static BuiltSet<DefenceDice> get values => _$values;

  /// Parses and returns [name] into the cooresponding [DefenceDice] value.
  ///
  /// Throws [ArgumentError] if no match is found.
  static DefenceDice valueOf(String name) => _$valueOf(name);
}

/// Represents possible sides to a [DefenceDice].
enum DefenceDiceSide {
  /// A block.
  block,

  /// A surge icon.
  surge,

  /// A blank side.
  blank,
}
