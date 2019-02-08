import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:swlegion/src/all_models.dart';

part 'defense.g.dart';

/// Result of rolling a defense dice pool.
abstract class Defense implements Built<Defense, DefenseBuilder> {
  static Serializer<Defense> get serializer => _$defenseSerializer;

  factory Defense(
    DefenseDice dice, {
    int blocks = 0,
    int blanks = 0,
  }) {
    return Defense._build(
      (b) => b
        ..dice = dice
        ..blocks = blocks
        ..blanks = blanks,
    );
  }

  factory Defense._build(void Function(DefenseBuilder) _) = _$Defense;
  Defense._();

  /// Number of blocks (after surge is applied).
  int get blocks;

  /// Number of blanks (after surge is applied).
  int get blanks;

  /// Type of defense dice.
  DefenseDice get dice;
}
