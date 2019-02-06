import 'dart:math';

import 'package:meta/meta.dart';
import 'package:swlegion/swlegion.dart';

import '../model/attack.dart';
import '../model/attack_pool.dart';
import '../model/defense.dart';
import '../model/defense_pool.dart';

/// Intelligent dice rolling sub-component of the simulator.
abstract class DiceRoller {
  @protected
  @visibleForOverriding
  T roll<T>(List<T> sides);

  AttackDiceSide _rollAttack(AttackDice dice, AttackSurge surge) {
    final result = roll(dice.sides);
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
    final result = roll(dice.sides);
    if (result == DefenseDiceSide.surge) {
      return surge ? DefenseDiceSide.block : DefenseDiceSide.blank;
    } else {
      return result;
    }
  }

  /// Returns the result with [max] re-rolls applied to try and get blocks.
  Defense rerollDefense(
    Defense results, {
    @required int max,
    @required bool surge,
    @required DefenseDiceSide Function(DefenseDice, {bool surge}) roll,
  }) {
    var blocks = results.blocks;
    var blanks = results.blanks;
    final rolls = <DefenseDiceSide>[];
    while (blanks > 0 && max > 0) {
      rolls.add(roll(results.dice, surge: surge));
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
    return Defense(
      results.dice,
      blocks: blocks,
      blanks: blanks,
    );
  }

  static bool _benefitsFromReroll(
    Attack result, {
    bool rerollNonCrits = true,
  }) {
    return result.blanks.isNotEmpty || rerollNonCrits && result.hits.isNotEmpty;
  }

  /// Returns [result] with up to [maxDice] re-rolled.
  ///
  /// This is a lower-level API that requires logic input. For general purpose
  /// (i.e. simulation) based on the existence of aim tokens, use the
  /// [rerollAttackAsBeneficial] method instead.
  Attack rerollAttack(
    Attack result, {
    int maxDice = 2,
    @required AttackSurge surge,
    AttackDiceSide Function(AttackDice, AttackSurge) roll,
    int rerollForCrits = 0,
  }) {
    assert(maxDice >= 0);
    assert(rerollForCrits != null);
    roll ??= _rollAttack;

    final hits = result.hits.toList()..sort();
    final crits = result.crits.toList()..sort();
    final blanks = result.blanks.toList()..sort();
    final toRoll = <AttackDice>[];

    while (maxDice > 0) {
      if (blanks.isNotEmpty) {
        toRoll.add(blanks.removeLast());
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
          blanks.add(dice);
          break;
        default:
          throw AssertionError('Unexpected dice side: $result');
      }
    }

    return Attack(
      hits: hits,
      crits: crits,
      blanks: blanks,
    );
  }

  /// Returns the result of re-rolling dice in [result].
  ///
  /// If [AttackPool.aimTokens] is `0`, this function just returns [result].
  ///
  /// Normally, as many [AttackDiceSide.blank]s are re-rolled (as possible).
  /// Depending on the target and keywords at play, the simulator _may_ re-roll
  /// [AttackDiceSide.hit], trying to obtain [AttackDiceSide.criticalHit].
  ///
  /// To disable that behavior, toggle [onlyRerollMisses] to `true`.
  Attack rerollAttackAsBeneficial(
    Attack result,
    AttackPool attack,
    DefensePool defense, {
    bool onlyRerollMisses = false,
  }) {
    var aimTokens = attack.aimTokens;
    if (aimTokens == 0 ||
        !_benefitsFromReroll(
          result,
          rerollNonCrits: !onlyRerollMisses,
        )) {
      return result;
    }

    final armor = defense.armor;
    final cover = defense.computeCover(attack);
    final dodge = defense.dodge;

    while (aimTokens-- > 0) {
      // We might need to crit-fish, as we would have hits that are discared.
      if (armor) {
        result = rerollAttack(
          result,
          maxDice: attack.diceToReroll,
          roll: _rollAttack,
          rerollForCrits: max(0, attack.diceToReroll - attack.impact),
          surge: attack.surge,
        );
        continue;
      }

      // We need at least (HITS + CRITS) > COVER + DODGE.
      //
      // If we have no way of scoring hits above cover (and need crits), fish.
      if (attack.totalDice <= dodge + cover) {
        result = rerollAttack(
          result,
          maxDice: attack.diceToReroll,
          roll: _rollAttack,
          rerollForCrits: attack.diceToReroll,
          surge: attack.surge,
        );
        continue;
      }

      // Re-roll misses only.
      result = rerollAttack(
        result,
        maxDice: attack.diceToReroll,
        roll: _rollAttack,
        surge: attack.surge,
      );
    }

    return result;
  }

  /// Rolls defense dice based on [attack] and returns the number of wounds.
  ///
  /// **NOTE**: This includes pierce and other abilities.
  int simulateWounds(
    Attack attack,
    AttackPool attacker,
    DefensePool defender,
  ) {
    // Hits can be cancelled or mitigated.
    var hits = attack.hits.length;
    var crits = attack.crits.length;

    // 5. Apply Dodge & Cover
    hits -= attacker.highVelocity ? 0 : defender.dodge;
    hits -= defender.computeCover(attacker);

    // 6. Apply Guardian
    hits -= defender.guardians;

    // Ensure that hits is non-negative.
    hits = max(hits, 0);

    // 7. Modify Attack Dice (i.e. impact & armor)
    if (defender.armor) {
      final convert = min(attacker.impact, hits);
      crits += convert;
      hits = 0;
    }

    // 8. Roll Defense Dice
    final totalHits = max(0, hits) + crits;
    var defense = rollDefenses(
      defender.dice,
      defender.impervious ? attacker.pierce + totalHits : totalHits,
      surge: defender.surge || defender.deflect && defender.dodge >= 1,
    );

    // 9. Modify Defense Dice (i.e. uncanny luck, impervious, pierce).
    // IMPERVIOUS (see above).
    // UNCANNY LUCK
    defense = rerollDefense(
      defense,
      max: defender.uncannyLuck,
      surge: defender.surge,
      roll: _rollDefense,
    );
    // PIERCE
    var blocked = defense.blocks;
    if (!defender.immuneToPierce) {
      blocked -= attacker.pierce;
    }

    return totalHits - max(0, blocked) as int;
  }

  /// Returns the result purely of rolling [allDice] with [surge] applied.
  Attack rollAttacks(Iterable<AttackDice> allDice, AttackSurge surge) {
    final hits = <AttackDice>[];
    final crits = <AttackDice>[];
    final blanks = <AttackDice>[];
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
          blanks.add(dice);
          break;
        default:
          throw AssertionError();
      }
    }
    return Attack(
      hits: hits,
      crits: crits,
      blanks: blanks,
    );
  }

  /// Returns the result of rolling [amount] of [dice] with [surge] applied.
  Defense rollDefenses(
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
    return Defense(
      dice,
      blocks: blocks,
      blanks: blanks,
    );
  }
}
