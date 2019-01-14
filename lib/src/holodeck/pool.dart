import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import 'package:swlegion/swlegion.dart';

final _mapEquals = const MapEquality<Object, Object>().equals;
final _mapHash = const MapEquality<Object, Object>().hash;

class AttackPool {
  /// Aim tokens.
  final int aimTokens;

  /// How to treat [AttackDiceSide.surge].
  final AttackSurge attackSurge;

  /// Attacking dice pool.
  final Map<AttackDice, int> dice;

  /// Whether [WeaponKeyword.kHighVelocity] is in the attack pool.
  final bool highVelocity;

  /// [WeaponKeyword.kPierce] in the attack pool.
  final int pierce;

  /// How many dice should be re-rolled when [aimTokens] are used.
  ///
  /// This should account for [UnitKeyword.kPrecise] and similar rules.
  final int diceToReroll;

  /// [WeaponKeyword.kImpact] in the attack pool.
  final int impact;

  /// [UnitKeyword.kSharpshooter] in the attack pool.
  final int sharpshooter;

  /// Whether [WeaponKeyword.kBlast] is in the attack pool.
  final bool blast;

  const AttackPool({
    this.aimTokens = 0,
    this.attackSurge,
    @required this.dice,
    this.highVelocity = false,
    this.sharpshooter = 0,
    this.impact = 0,
    this.pierce = 0,
    this.diceToReroll = 2,
    this.blast = false,
  })  : assert(aimTokens >= 0),
        assert(attackSurge != null),
        assert(dice != null),
        assert(pierce >= 0),
        assert(diceToReroll >= 2),
        assert(sharpshooter >= 0),
        assert(impact >= 0),
        assert(blast != null);

  AttackPool copyWith({
    int aimTokens,
    AttackSurge attackSurge,
    Map<AttackDice, int> dice,
    int pierce,
    int diceToReroll,
    int sharpshooter,
    int impact,
    bool blast,
  }) {
    return AttackPool(
      aimTokens: aimTokens ?? this.aimTokens,
      attackSurge: attackSurge ?? this.attackSurge,
      dice: dice ?? this.dice,
      pierce: pierce ?? this.pierce,
      diceToReroll: diceToReroll ?? this.diceToReroll,
      sharpshooter: sharpshooter ?? this.sharpshooter,
      impact: impact ?? this.impact,
      blast: blast ?? this.blast,
    );
  }

  @override
  bool operator ==(Object o) {
    return identical(this, o) ||
        o is AttackPool &&
            aimTokens == o.aimTokens &&
            attackSurge == o.attackSurge &&
            _mapEquals(dice, o.dice) &&
            highVelocity == o.highVelocity &&
            sharpshooter == o.sharpshooter &&
            impact == o.impact &&
            pierce == o.pierce &&
            diceToReroll == o.diceToReroll &&
            blast == o.blast;
  }

  @override
  int get hashCode =>
      aimTokens.hashCode ^
      attackSurge.hashCode ^
      _mapHash(dice) ^
      highVelocity.hashCode ^
      sharpshooter.hashCode ^
      impact.hashCode ^
      pierce.hashCode ^
      diceToReroll.hashCode ^
      blast.hashCode;

  /// Returns [dice] flattened a list of [totalDice].
  List<AttackDice> flattenDice() {
    return dice.entries.fold([], (p, d) {
      return p..addAll(Iterable.generate(d.value, (_) => d.key));
    });
  }

  /// Total dice (of any color) being thrown.
  int get totalDice => dice.values.reduce((a, b) => a + b);

  @override
  String toString() {
    final details = const JsonEncoder.withIndent('  ').convert({
      'aimTokens': aimTokens,
      'attackSurge': attackSurge?.name,
      'dice': dice,
      'highVelocity': highVelocity,
      'sharpshooter': sharpshooter,
      'impact': impact,
      'pierce': pierce,
      'diceToReroll': diceToReroll,
      'blast': blast,
    });
    return 'AttackPool $details';
  }
}

class DefensePool {
  /// Whether the defending units have [UnitKeyword.kArmor].
  final bool armor;

  /// How much cover the defending units have.
  ///
  /// This should include terrain, suppression, and through abilities such as
  /// [UnitKeyword.kCover], [UnitKeyword.kLowProfile], or through upgrades like
  /// "Duck and Cover".
  final int cover;

  /// What type of dice the defending units are using.
  final DefenseDice dice;

  /// Whether to convert [DefenseDiceSide.surge] to a block.
  final bool defenseSurge;

  /// Dodge tokens.
  final int dodge;

  /// Whether the defending units have [UnitKeyword.kImmuneBlast].
  final bool immuneToBlast;

  /// Whether the defending units have [UnitKeyword.kImmunePierce].
  final bool immuneToPierce;

  /// Whether the defending units have [UnitKeyword.kImpervious].
  final bool impervious;

  /// How many dice may be re-rolled, if any, on failed defense dice.
  ///
  /// This should account for [UnitKeyword.kUncannyLuck].
  final int diceToReroll;

  const DefensePool({
    @required this.dice,
    this.defenseSurge = false,
    this.armor = false,
    this.cover = 0,
    this.dodge = 0,
    this.immuneToBlast = false,
    this.immuneToPierce = false,
    this.impervious = false,
    this.diceToReroll = 0,
  })  : assert(dice != null),
        assert(defenseSurge != null),
        assert(armor != null),
        assert(cover >= 0 && cover <= 2),
        assert(dodge >= 0),
        assert(immuneToBlast != null),
        assert(immuneToPierce != null),
        assert(impervious != null),
        assert(diceToReroll >= 0);

  @override
  bool operator ==(Object o) {
    return identical(this, o) ||
        o is DefensePool &&
            dice == o.dice &&
            defenseSurge == o.defenseSurge &&
            armor == o.armor &&
            cover == o.cover &&
            dodge == o.dodge &&
            immuneToBlast == o.immuneToBlast &&
            immuneToPierce == o.immuneToPierce &&
            impervious == o.impervious &&
            diceToReroll == o.diceToReroll;
  }

  @override
  int get hashCode =>
      dice.hashCode ^
      defenseSurge.hashCode ^
      armor.hashCode ^
      cover.hashCode ^
      dodge.hashCode ^
      immuneToBlast.hashCode ^
      immuneToPierce.hashCode ^
      impervious.hashCode ^
      diceToReroll.hashCode;

  @override
  String toString() {
    final details = const JsonEncoder.withIndent('  ').convert({
      'dice': dice.name,
      'defenseSurge': defenseSurge,
      'armor': armor,
      'cover': cover,
      'dodge': dodge,
      'immuneToBlast': immuneToBlast,
      'immuneToPierce': immuneToPierce,
      'impervious': impervious,
      'diceToReroll': diceToReroll,
    });
    return 'DefensePool $details';
  }
}
