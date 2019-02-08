import 'dart:math';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';
import 'package:swlegion/swlegion.dart';

import 'attack_pool.dart';

part 'defense_pool.g.dart';

abstract class DefensePool implements Built<DefensePool, DefensePoolBuilder> {
  static Serializer<DefensePool> get serializer => _$defensePoolSerializer;

  factory DefensePool(void Function(DefensePoolBuilder) _) = _$DefensePool;

  factory DefensePool.of({
    @required DefenseDice dice,
    int targets = 1,
    bool surge = false,
    bool armor = false,
    int cover = 0,
    bool deflect = false,
    int dodge = 0,
    int guardians = 0,
    bool immuneToBlast = false,
    bool immuneToPierce = false,
    bool impervious = false,
    int uncannyLuck = 0,
  }) {
    return DefensePool(
      (b) => b
        ..dice = dice
        ..targets = targets
        ..surge = surge
        ..armor = armor
        ..cover = cover
        ..deflect = deflect
        ..dodge = dodge
        ..guardians = guardians
        ..immuneToBlast = immuneToBlast
        ..immuneToPierce = immuneToPierce
        ..impervious = impervious
        ..uncannyLuck = uncannyLuck,
    );
  }

  DefensePool._();

  /// Whether the defending units have [UnitKeyword.kArmor].
  bool get armor;

  /// How much cover the defending units have.
  ///
  /// This should include terrain, suppression, and through abilities such as
  /// [UnitKeyword.kCover], [UnitKeyword.kLowProfile], or through upgrades like
  /// "Duck and Cover".
  int get cover;

  /// Returns the amount of effective (final) cover if attacked by [attacker].
  int computeCover(AttackPool attacker) {
    if (attacker.melee || attacker.blast && !immuneToBlast) {
      return 0;
    }
    return max(0, cover - attacker.sharpshooter);
  }

  /// Whether the defending units have [UnitKeyword.kDeflect].
  bool get deflect;

  /// What type of dice the defending units are using.
  DefenseDice get dice;

  /// Total targets in this unit defending.
  int get targets;

  /// Whether to convert [DefenseDiceSide.surge] to a block.
  bool get surge;

  /// Dodge tokens.
  int get dodge;

  /// Number of nearby units with [UnitKeyword.kGuardian] available.
  int get guardians;

  /// Whether the defending units have [UnitKeyword.kImmuneBlast].
  bool get immuneToBlast;

  /// Whether the defending units have [UnitKeyword.kImmunePierce].
  bool get immuneToPierce;

  /// Whether the defending units have [UnitKeyword.kImpervious].
  bool get impervious;

  /// Whether the defending units have [UnitKeyword.kUncannyLuck].
  int get uncannyLuck;
}
