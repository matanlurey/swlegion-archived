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
        Attack(
          hits: [
            AttackDice.red,
            AttackDice.black,
          ],
          blanks: [
            AttackDice.white,
          ],
        ),
      );
    });

    test('should re-roll a single miss', () {
      final attack = Attack(
        hits: [
          AttackDice.black,
          AttackDice.red,
        ],
        blanks: [
          AttackDice.white,
        ],
      );
      final reroll = Holodeck().rerollAttack(
        attack,
        roll: (_, __) => AttackDiceSide.criticalHit,
        surge: null,
      );
      expect(
        reroll,
        Attack(
          hits: [
            AttackDice.black,
            AttackDice.red,
          ],
          crits: [
            AttackDice.white,
          ],
        ),
      );
    });

    test('should re-roll a two misses', () {
      final attack = Attack(
        hits: [
          AttackDice.black,
          AttackDice.red,
        ],
        blanks: [
          AttackDice.white,
          AttackDice.black,
          AttackDice.white,
        ],
      );
      final reroll = Holodeck().rerollAttack(
        attack,
        roll: (_, __) => AttackDiceSide.criticalHit,
        surge: null,
      );
      expect(
        reroll,
        Attack(
          hits: [
            AttackDice.black,
            AttackDice.red,
          ],
          crits: [
            AttackDice.black,
            AttackDice.white,
          ],
          blanks: [
            AttackDice.white,
          ],
        ),
      );
    });

    test('should re-roll hits (crit fishing)', () {
      final attack = Attack(
        hits: [
          AttackDice.black,
          AttackDice.red,
        ],
        blanks: [
          AttackDice.white,
        ],
      );
      final reroll = Holodeck().rerollAttack(
        attack,
        roll: (_, __) => AttackDiceSide.criticalHit,
        rerollForCrits: 1,
        surge: null,
      );
      expect(
        reroll,
        Attack(
          hits: [
            AttackDice.black,
          ],
          crits: [
            AttackDice.white,
            AttackDice.red,
          ],
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
          holodeck.rerollAttackAsBeneficial(
            Attack(
              blanks: [
                AttackDice.white,
                AttackDice.white,
              ],
            ),
            AttackPool.of(
              dice: {
                AttackDice.white: 2,
              },
              aimTokens: 1,
            ),
            DefensePool.of(
              dice: DefenseDice.white,
            ),
          ),
          Attack(
            crits: [
              AttackDice.white,
              AttackDice.white,
            ],
          ),
        );
      });

      test('hits (always against armor)', () {
        final reroll = holodeck.rerollAttackAsBeneficial(
          Attack(
            blanks: [
              AttackDice.white,
              AttackDice.white,
            ],
          ),
          AttackPool.of(
            dice: {
              AttackDice.white: 2,
            },
            aimTokens: 1,
          ),
          DefensePool.of(
            dice: DefenseDice.white,
            armor: true,
          ),
        );
        expect(
          reroll,
          Attack(
            crits: [
              AttackDice.white,
              AttackDice.white,
            ],
          ),
        );
      });

      test('hits (when cover would prevent all damage)', () {
        expect(
          holodeck.rerollAttackAsBeneficial(
            Attack(
              hits: [
                AttackDice.white,
                AttackDice.white,
              ],
            ),
            AttackPool.of(
              dice: {
                AttackDice.white: 2,
              },
              aimTokens: 1,
            ),
            DefensePool.of(
              dice: DefenseDice.white,
              cover: 2,
            ),
          ),
          Attack(
            crits: [
              AttackDice.white,
              AttackDice.white,
            ],
          ),
        );
      });

      test('misses only when hits can effect cover', () {
        expect(
          holodeck.rerollAttackAsBeneficial(
            Attack(
              hits: [
                AttackDice.white,
              ],
              blanks: [
                AttackDice.white,
              ],
            ),
            AttackPool.of(
              dice: {
                AttackDice.white: 2,
              },
              aimTokens: 1,
            ),
            DefensePool.of(
              dice: DefenseDice.white,
              cover: 1,
            ),
          ),
          Attack(
            hits: [
              AttackDice.white,
            ],
            crits: [
              AttackDice.white,
            ],
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
        Defense(
          DefenseDice.white,
          blocks: 1,
          blanks: 1,
        ),
      );
    });

    test('should re-roll defense dice', () {
      final defense = Defense(
        DefenseDice.white,
        blocks: 1,
        blanks: 2,
      );
      final reroll = Holodeck().rerollDefense(
        defense,
        max: 3,
        surge: true,
        roll: (_, {surge}) => DefenseDiceSide.block,
      );
      expect(
        reroll,
        Defense(
          DefenseDice.white,
          blocks: 3,
          blanks: 0,
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
