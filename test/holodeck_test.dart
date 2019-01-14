import 'dart:math';

import 'package:swlegion/holodeck.dart';
import 'package:swlegion/swlegion.dart';
import 'package:test/test.dart';

void main() {
  group('Attack Dice', () {
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
          roll: (_, __) => AttackDiceSide.criticalHit,
          surge: null,
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
          roll: (_, __) => AttackDiceSide.criticalHit,
          surge: null,
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
          roll: (_, __) => AttackDiceSide.criticalHit,
          rerollForCrits: 1,
          surge: null,
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

    group('should re-roll ', () {
      final alwaysCrit = _FixedRandom([0]);
      final holodeck = Holodeck(
        random: alwaysCrit,
      );

      test('misses (always)', () {
        expect(
          holodeck.rerollAttacks(
            const AttackResult(
              hits: [],
              crits: [],
              misses: [
                AttackDice.white,
                AttackDice.white,
              ],
            ),
            const AttackPool(
              dice: {
                AttackDice.white: 2,
              },
              aimTokens: 1,
            ),
            const DefensePool(
              dice: DefenseDice.white,
            ),
          ),
          const AttackResult(
            hits: [],
            crits: [
              AttackDice.white,
              AttackDice.white,
            ],
            misses: [],
          ),
        );
      });

      test('hits (always against armor)', () {
        expect(
          holodeck.rerollAttacks(
            const AttackResult(
              hits: [],
              crits: [],
              misses: [
                AttackDice.white,
                AttackDice.white,
              ],
            ),
            const AttackPool(
              dice: {
                AttackDice.white: 2,
              },
              aimTokens: 1,
            ),
            const DefensePool(
              dice: DefenseDice.white,
              armor: true,
            ),
          ),
          const AttackResult(
            hits: [],
            crits: [
              AttackDice.white,
              AttackDice.white,
            ],
            misses: [],
          ),
        );
      });

      test('hits (when cover would prevent all damage)', () {
        expect(
          holodeck.rerollAttacks(
            const AttackResult(
              hits: [
                AttackDice.white,
                AttackDice.white,
              ],
              crits: [],
              misses: [],
            ),
            const AttackPool(
              dice: {
                AttackDice.white: 2,
              },
              aimTokens: 1,
            ),
            const DefensePool(
              dice: DefenseDice.white,
              cover: 2,
            ),
          ),
          const AttackResult(
            hits: [],
            crits: [
              AttackDice.white,
              AttackDice.white,
            ],
            misses: [],
          ),
        );
      });

      test('misses only when hits can effect cover', () {
        expect(
          holodeck.rerollAttacks(
            const AttackResult(
              hits: [
                AttackDice.white,
              ],
              crits: [],
              misses: [
                AttackDice.white,
              ],
            ),
            const AttackPool(
              dice: {
                AttackDice.white: 2,
              },
              aimTokens: 1,
            ),
            const DefensePool(
              dice: DefenseDice.white,
              cover: 1,
            ),
          ),
          const AttackResult(
            hits: [
              AttackDice.white,
            ],
            crits: [
              AttackDice.white,
            ],
            misses: [],
          ),
        );
      });
    });
  });

  group('Defense Dice', () {
    test('should roll defense dice', () {
      final holodeck = Holodeck(
        random: _FixedRandom([0, 2, 5]),
      );
      expect(
        holodeck.rollDefenses(
          DefenseDice.white,
          2,
          surge: true,
        ),
        const DefenseResult(
          blocks: 1,
          blanks: 1,
          dice: DefenseDice.white,
        ),
      );
    });

    test('should re-roll defense dice', () {
      expect(
        const DefenseResult(
          blocks: 1,
          blanks: 2,
          dice: DefenseDice.white,
        ).reroll(
          max: 3,
          surge: true,
          roll: (_, {surge}) => DefenseDiceSide.block,
        ),
        const DefenseResult(
          blocks: 3,
          blanks: 0,
          dice: DefenseDice.white,
        ),
      );
    });
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
