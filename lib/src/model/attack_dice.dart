import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attack_dice.g.dart';

/// Represents possible attack dice for a given attack of weapon (D8).
///
/// See http://starwarslegion.wikia.com/wiki/Dice.
class AttackDice extends EnumClass implements Comparable<AttackDice> {
  static const _sides = {
    white: [
      AttackDiceSide.hit,
      AttackDiceSide.criticalHit,
      AttackDiceSide.surge,
      AttackDiceSide.blank,
      AttackDiceSide.blank,
      AttackDiceSide.blank,
      AttackDiceSide.blank,
      AttackDiceSide.blank,
    ],
    black: [
      AttackDiceSide.hit,
      AttackDiceSide.hit,
      AttackDiceSide.hit,
      AttackDiceSide.criticalHit,
      AttackDiceSide.surge,
      AttackDiceSide.blank,
      AttackDiceSide.blank,
      AttackDiceSide.blank,
    ],
    red: [
      AttackDiceSide.hit,
      AttackDiceSide.hit,
      AttackDiceSide.hit,
      AttackDiceSide.hit,
      AttackDiceSide.hit,
      AttackDiceSide.criticalHit,
      AttackDiceSide.surge,
      AttackDiceSide.blank,
    ],
  };

  /// White attack dice.
  @BuiltValueEnumConst(wireName: 'white')
  static const AttackDice white = _$white;

  /// Black attack dice.
  @BuiltValueEnumConst(wireName: 'black')
  static const AttackDice black = _$black;

  /// Red attack dice.
  @BuiltValueEnumConst(wireName: 'red')
  static const AttackDice red = _$red;

  const AttackDice._(String name) : super(name);

  int get _order {
    switch (this) {
      case white:
        return 0;
      case black:
        return 1;
      case red:
        return 2;
      default:
        throw AssertionError();
    }
  }

  @override
  int compareTo(AttackDice o) => _order.compareTo(o._order);

  @override
  String get name => _$AttackDiceSerializer._toWire[super.name];

  /// Sides of the dice.
  List<AttackDiceSide> get sides => _sides[this];

  /// Support for serializing instances of [AttackDice].
  static Serializer<AttackDice> get serializer => _$attackDiceSerializer;

  /// All known values of [AttackDice].
  static BuiltSet<AttackDice> get values => _$values;

  /// Parses and returns [name] into the cooresponding [AttackDice] value.
  ///
  /// Throws [ArgumentError] if no match is found.
  static AttackDice from(String name) {
    return _$valueOf(_$AttackDiceSerializer._fromWire[name]);
  }

  /// **WARNING**: Prefer [from].
  @Deprecated('Use "AttackDice.from" instead.')
  static AttackDice valueOf(String name) => _$valueOf(name);
}

/// Represents possible sides to an [AttackDice].
enum AttackDiceSide {
  /// A hit.
  hit,

  /// A critical hit.
  criticalHit,

  /// A surge icon.
  surge,

  /// A blank.
  blank,
}
