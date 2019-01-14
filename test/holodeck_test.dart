import 'dart:math';

import 'package:swlegion/holodeck.dart';
import 'package:swlegion/swlegion.dart';
import 'package:test/test.dart';

void main() {
  test('should roll attack dice', () {
    final holodeck = Holodeck(
      random: _FixedRandom([0, 2, 5]),
    );
    expect(
      holodeck.rollAttacks([
        AttackDice.red,
        AttackDice.black,
        AttackDice.white,
      ], AttackSurge.critical),
      const AttackResult(
        hits: [
          AttackDice.red,
          AttackDice.black,
        ],
        crits: [],
        misses: [
          AttackDice.white,
        ],
      ),
    );
  });

  test('should re-roll a single miss', () {
    expect(
      const AttackResult(
        hits: [
          AttackDice.black,
          AttackDice.red,
        ],
        crits: [],
        misses: [
          AttackDice.white,
        ],
      ).reroll(
        roll: (_) => AttackDiceSide.criticalHit,
      ),
      const AttackResult(
        hits: [
          AttackDice.black,
          AttackDice.red,
        ],
        crits: [
          AttackDice.white,
        ],
        misses: [],
      ),
    );
  });

  test('should re-roll a two misses', () {
    expect(
      const AttackResult(
        hits: [
          AttackDice.black,
          AttackDice.red,
        ],
        crits: [],
        misses: [
          AttackDice.white,
          AttackDice.black,
          AttackDice.white,
        ],
      ).reroll(
        roll: (_) => AttackDiceSide.criticalHit,
      ),
      const AttackResult(
        hits: [
          AttackDice.black,
          AttackDice.red,
        ],
        crits: [
          AttackDice.black,
          AttackDice.white,
        ],
        misses: [
          AttackDice.white,
        ],
      ),
    );
  });

  test('should re-roll hits (crit fishing)', () {
    expect(
      const AttackResult(
        hits: [
          AttackDice.black,
          AttackDice.red,
        ],
        crits: [],
        misses: [
          AttackDice.white,
        ],
      ).reroll(
        roll: (_) => AttackDiceSide.criticalHit,
        rerollForCrits: 1,
      ),
      const AttackResult(
        hits: [
          AttackDice.black,
        ],
        crits: [
          AttackDice.white,
          AttackDice.red,
        ],
        misses: [],
      ),
    );
  });
}

class _FixedRandom implements Random {
  final List<int> _results;
  var _pointer = 0;

  _FixedRandom(this._results);

  @override
  Object noSuchMethod(_) => super.noSuchMethod(_);

  @override
  int nextInt(int max) {
    final pointer = _pointer;
    final result = _results[pointer];
    if (pointer == _results.length - 1) {
      _pointer = 0;
    } else {
      _pointer++;
    }
    return result;
  }
}
