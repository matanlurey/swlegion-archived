import 'dart:convert';
import 'dart:math';

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import 'package:swlegion/holodeck.dart';
import 'package:swlegion/swlegion.dart';

final _listEquals = const ListEquality<Object>().equals;
final _listHash = const ListEquality<Object>().hash;

class Holodeck {
  final Random _random;

  Holodeck({
    Random random,
  }) : _random = random ?? Random();

  AttackDiceSide _rollAttack(AttackDice dice, AttackSurge surge) {
    final result = dice.sides[_random.nextInt(dice.sides.length)];
    if (result == AttackDiceSide.surge) {
      switch (surge) {
        case AttackSurge.critical:
          return AttackDiceSide.criticalHit;
        case AttackSurge.hit:
          return AttackDiceSide.hit;
        default:
          return AttackDiceSide.blank;
      }
    } else {
      return result;
    }
  }

  DefenseDiceSide _rollDefense(DefenseDice dice, {@required bool surge}) {
    final result = dice.sides[_random.nextInt(dice.sides.length)];
    if (result == DefenseDiceSide.surge) {
      return surge ? DefenseDiceSide.block : DefenseDiceSide.blank;
    } else {
      return result;
    }
  }

  /// Rolls defense dice based on [attack] and returns the number of wounds.
  ///
  /// **NOTE**: This includes pierce and other abilities.
  int simulateWounds(
    AttackResult attack,
    AttackPool attacker,
    DefensePool defender,
  ) {
    // Hits can be cancelled or mitigated.
    var hits = attack.hits.length;
    var crits = attack.crits.length;

    // 5. Apply Dodge & Cover
    hits -= attacker.highVelocity ? 0 : defender.dodge;
    hits -= defender.computeCover(attacker);

    // 6. Modify Attack Dice (i.e. impact & armor)
    if (defender.armor) {
      final convert = min(attacker.impact, hits);
      crits += convert;
      hits = 0;
    }

    // 7. Roll Defense Dice
    final totalHits = max(0, hits) + crits;
    var defense = rollDefenses(
      defender.dice,
      defender.impervious ? attacker.pierce + totalHits : totalHits,
      surge: defender.defenseSurge,
    );

    // 8. Modify Defense Dice (i.e. uncanny luck, impervious, pierce).
    // IMPERVIOUS (see above).
    // UNCANNY LUCK
    defense = defense.reroll(
      max: defender.diceToReroll,
      surge: defender.defenseSurge,
      roll: _rollDefense,
    );
    // PIERCE
    var blocked = defense.blocks;
    if (!defender.immuneToPierce) {
      blocked -= attacker.pierce;
    }

    return totalHits - max(0, blocked) as int;
  }  /// Returns the result of re-rolling dice in [result].
  ///
  /// If [AttackPool.aimTokens] is `0`, this function just returns [result].
  ///
  /// Normally, as many [AttackDiceSide.blank]s are re-rolled (as possible).
  /// Depending on the target and keywords at play, the simulator _may_ re-roll
  /// [AttackDiceSide.hit], trying to obtain [AttackDiceSide.criticalHit].
  ///
  /// To disable that behavior, toggle [onlyRerollMisses] to `true`.
  AttackResult rerollAttacks(
    AttackResult result,
    AttackPool attack,
    DefensePool defense, {
    bool onlyRerollMisses = false,
  }) {
    var aimTokens = attack.aimTokens;
    if (aimTokens == 0 ||
        (result.misses.isEmpty && result.hits.isEmpty) ||
        (result.misses.isEmpty && onlyRerollMisses)) {
      return result;
    }

    final armor = defense.armor;
    final cover = defense.computeCover(attack);
    final dodge = defense.dodge;

    while (aimTokens-- > 0) {
      // We might need to crit-fish, as we would have hits that are discared.
      if (armor) {
        result = result.reroll(
          maxDice: attack.diceToReroll,
          roll: _rollAttack,
          rerollForCrits: max(0, attack.diceToReroll - attack.impact),
          surge: attack.attackSurge,
        );
        continue;
      }

      // We need at least (HITS + CRITS) > COVER + DODGE.
      //
      // If we have no way of scoring hits above cover (and need crits), fish.
      if (attack.totalDice <= dodge + cover) {
        result = result.reroll(
          maxDice: attack.diceToReroll,
          roll: _rollAttack,
          rerollForCrits: attack.diceToReroll,
          surge: attack.attackSurge,
        );
        continue;
      }

      // Re-roll misses only.
      result = result.reroll(
        maxDice: attack.diceToReroll,
        roll: _rollAttack,
        surge: attack.attackSurge,
      );
    }

    return result;
  }

  /// Returns the result purely of rolling [allDice] with [surge] applied.
  AttackResult rollAttacks(Iterable<AttackDice> allDice, AttackSurge surge) {
    final hits = <AttackDice>[];
    final crits = <AttackDice>[];
    final misses = <AttackDice>[];
    for (final dice in allDice) {
      final result = _rollAttack(dice, surge);
      switch (result) {
        case AttackDiceSide.criticalHit:
          crits.add(dice);
          break;
        case AttackDiceSide.hit:
          hits.add(dice);
          break;
        case AttackDiceSide.blank:
          misses.add(dice);
          break;
        default:
          throw AssertionError();
      }
    }
    return AttackResult(
      hits: hits,
      crits: crits,
      misses: misses,
    );
  }

  /// Returns the result of rolling [amount] of [dice] with [surge] applied.
  DefenseResult rollDefenses(
    DefenseDice dice,
    int amount, {
    @required bool surge,
  }) {
    var blocks = 0;
    var blanks = 0;
    for (var i = 0; i < amount; i++) {
      final result = _rollDefense(dice, surge: surge);
      switch (result) {
        case DefenseDiceSide.block:
          blocks++;
          break;
        case DefenseDiceSide.blank:
          blanks++;
          break;
        default:
          throw AssertionError();
      }
    }
    return DefenseResult(
      blocks: blocks,
      blanks: blanks,
      dice: dice,
    );
  }
}

class AttackResult {
  final List<AttackDice> hits;
  final List<AttackDice> crits;
  final List<AttackDice> misses;

  const AttackResult({
    @required this.hits,
    @required this.crits,
    @required this.misses,
  })  : assert(hits != null),
        assert(crits != null),
        assert(misses != null);

  /// Returns this result with up to [maxDice] re-rolled.
  AttackResult reroll({
    int maxDice = 2,
    @required AttackSurge surge,
    @required AttackDiceSide Function(AttackDice, AttackSurge) roll,
    int rerollForCrits = 0,
  }) {
    assert(maxDice >= 0);
    assert(roll != null);
    assert(rerollForCrits != null);

    final hits = this.hits.toList()..sort();
    final crits = this.crits.toList()..sort();
    final misses = this.misses.toList()..sort();
    final toRoll = <AttackDice>[];

    while (maxDice > 0) {
      if (misses.isNotEmpty) {
        toRoll.add(misses.removeLast());
      } else if (hits.isNotEmpty && rerollForCrits > 0) {
        toRoll.add(hits.removeLast());
        rerollForCrits--;
      }
      maxDice--;
    }

    for (final dice in toRoll) {
      final result = roll(dice, surge);
      switch (result) {
        case AttackDiceSide.criticalHit:
          crits.add(dice);
          break;
        case AttackDiceSide.hit:
          crits.add(dice);
          break;
        case AttackDiceSide.blank:
          misses.add(dice);
          break;
        default:
          throw AssertionError('Unexpected dice side: $result');
      }
    }

    return AttackResult(
      hits: hits,
      crits: crits,
      misses: misses,
    );
  }

  @override
  bool operator ==(Object o) =>
      identical(this, o) ||
      o is AttackResult &&
          _listEquals(hits, o.hits) &&
          _listEquals(crits, o.crits) &&
          _listEquals(misses, o.misses);

  @override
  int get hashCode {
    return _listHash(hits) ^ _listHash(crits) ^ _listHash(misses);
  }

  /// Total successful (non-miss) hits.
  int get totalHits => hits.length + crits.length;

  @override
  String toString() {
    final details = const JsonEncoder.withIndent('  ').convert({
      'hits': hits.map((d) => d.name).toList(),
      'crits': crits.map((d) => d.name).toList(),
      'misses': misses.map((d) => d.name).toList(),
    });
    return 'AttackResult $details';
  }
}

class DefenseResult {
  final int blocks;
  final int blanks;
  final DefenseDice dice;

  const DefenseResult({
    this.blocks,
    this.blanks,
    this.dice,
  })  : assert(blocks != null),
        assert(blanks != null),
        assert(dice != null);

  @override
  bool operator ==(Object o) =>
      identical(this, o) ||
      o is DefenseResult &&
          blocks == o.blocks &&
          blanks == o.blanks &&
          dice == o.dice;

  @override
  int get hashCode {
    return blocks.hashCode ^ blanks.hashCode ^ dice.hashCode;
  }

  /// Returns the result with [max] re-rolls applied to try and get [blocks].
  DefenseResult reroll({
    @required int max,
    @required bool surge,
    @required DefenseDiceSide Function(DefenseDice, {bool surge}) roll,
  }) {
    var blocks = this.blocks;
    var blanks = this.blanks;
    final rolls = <DefenseDiceSide>[];
    while (blanks > 0 && max > 0) {
      rolls.add(roll(dice, surge: surge));
      max--;
      blanks--;
    }
    for (final roll in rolls) {
      if (roll == DefenseDiceSide.block) {
        blocks++;
      } else {
        blanks++;
      }
    }
    return DefenseResult(
      blocks: blocks,
      blanks: blanks,
      dice: dice,
    );
  }

  @override
  String toString() {
    final details = const JsonEncoder.withIndent('  ').convert({
      'blocks': blocks,
      'blanks': blanks,
      'type': dice.name,
    });
    return 'DefenseResult $details';
  }
}
