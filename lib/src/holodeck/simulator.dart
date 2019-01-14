import 'dart:convert';
import 'dart:math';

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
        // ignore: parameter_assignments
        rerollForCrits--;
      }
      // ignore: parameter_assignments
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
