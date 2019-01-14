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

  AttackDiceSide _rollAttack(AttackDice dice) {
    return dice.sides[_random.nextInt(dice.sides.length)];
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
  AttackResult rerollIfDesirable(
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
        );
        continue;
      }

      // Re-roll misses only.
      result = result.reroll(maxDice: attack.diceToReroll, roll: _rollAttack);
    }

    return result;
  }

  /// Returns the result purely of rolling [allDice] with [surge] applied.
  AttackResult rollAttacks(Iterable<AttackDice> allDice, AttackSurge surge) {
    final hits = <AttackDice>[];
    final crits = <AttackDice>[];
    final misses = <AttackDice>[];
    for (final dice in allDice) {
      final result = _rollAttack(dice);
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
        case AttackDiceSide.surge:
          switch (surge) {
            case AttackSurge.critical:
              crits.add(dice);
              break;
            case AttackSurge.hit:
              hits.add(dice);
              break;
            default:
              misses.add(dice);
              break;
          }
          break;
      }
    }
    return AttackResult(
      hits: hits,
      crits: crits,
      misses: misses,
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

  AttackResult operator +(AttackResult o) {
    return AttackResult(
      hits: hits.toList()..addAll(o.hits),
      crits: crits.toList()..addAll(o.crits),
      misses: misses.toList()..addAll(o.misses),
    );
  }

  /// Returns this result with up to [maxDice] re-rolled.
  AttackResult reroll({
    int maxDice = 2,
    @required AttackDiceSide Function(AttackDice) roll,
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
      final result = roll(dice);
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
