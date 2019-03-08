import 'package:built_collection/built_collection.dart';
import 'package:meta/meta.dart';
import 'package:swlegion/catalog.dart';
import 'package:swlegion/src/all_models.dart';

import '../model/attack_pool.dart';

/// Provides methods for generating valid attacks against a target.
abstract class AttackGenerator {
  /// Returns possible attacks keyed to a [Weapon] type for a [unit].
  ///
  /// If [includeCommandCards] is not `false`, then command-card specific
  /// weapons and/or attacks are also included.
  Map<Weapon, int> availableWeapons(
    Unit unit, {
    Iterable<Upgrade> upgrades = const [],
    bool includeCommandCards = true,
  }) {
    final results = <Weapon, int>{};
    final totalMinis = unit.miniatures + upgrades.fold<int>(0, _foldMinis);
    final sidearmMinis = _sidearmUpgrades(upgrades);

    for (final weapon in unit.weapons) {
      if (weapon.isMeleeOnly) {
        results[weapon] = totalMinis - sidearmMinis.meleeWeapons;
      } else {
        results[weapon] = totalMinis - sidearmMinis.rangedWeapons;
      }
    }

    for (final upgrade in upgrades) {
      if (upgrade.weapon != null) {
        final current = results[upgrade.weapon] ?? 0;
        results[upgrade.weapon] = current + 1;
      }
    }

    if (includeCommandCards) {
      final weapons = _commandCardWeapons[unit.toRef()];
      if (weapons != null) {
        for (final weapon in weapons) {
          results[weapon] = 1;
        }
      }
    }

    return results;
  }

  static _SidearmMinis _sidearmUpgrades(Iterable<Upgrade> upgrades) {
    var melee = 0;
    var ranged = 0;
    for (final upgrade in upgrades) {
      if (upgrade.keywords.containsKey(UpgradeKeyword.kSidearmMelee)) {
        melee++;
      }
      if (upgrade.keywords.containsKey(UpgradeKeyword.kSidearmRanged)) {
        ranged++;
      }
    }
    return _SidearmMinis(meleeWeapons: melee, rangedWeapons: ranged);
  }

  /// Returns all [Weapon]s available to a [Unit] based on [CommandCard]s.
  BuiltSetMultimap<Reference<Unit>, Weapon> get _commandCardWeapons {
    final results = SetMultimapBuilder<Reference<Unit>, Weapon>();
    for (final card in catalog.commandCards) {
      if (card.weapon != null && card.required.isNotEmpty) {
        results.add(card.required.first, card.weapon);
      }
    }
    return results.build();
  }

  static int _foldMinis(int sum, Upgrade upgrade) {
    return sum + (upgrade.addsMiniature ? 1 : 0);
  }

  /// Returns an [AttackPool] from [unit] with [weapons].
  AttackPool formAttackPool(
    Unit unit, {
    int aimTokens = 0,
    @required Map<Weapon, int> weapons,
  }) {
    final builder = AttackPool.of(
      dice: const {},
    ).toBuilder();
    weapons.forEach((weapon, amount) {
      for (var i = 0; i < amount; i++) {
        _buildAttackPool(builder, weapon);
      }
      if (!builder.highVelocity &&
          weapon.keywords.containsKey(WeaponKeyword.kHighVelocity)) {
        builder.highVelocity = true;
      }
      if (!builder.blast && weapon.keywords.containsKey(WeaponKeyword.kBlast)) {
        builder.blast = true;
      }
      if (weapon.isMeleeOnly) {
        builder.melee = true;
      }
      builder
        ..impact += (weapon.keywords[WeaponKeyword.kImpact] ?? 0) as int
        ..pierce += (weapon.keywords[WeaponKeyword.kPierce] ?? 0) as int;
    });
    return builder.build();
  }

  static void _buildAttackPool(AttackPoolBuilder builder, Weapon weapon) {
    if (weapon.keywords.containsKey(WeaponKeyword.kSpray)) {
      _addDice(builder.spray, weapon.dice);
    } else {
      _addDice(builder.dice, weapon.dice);
    }
  }

  static void _addDice(
    MapBuilder<AttackDice, int> a,
    BuiltMap<AttackDice, int> b,
  ) {
    b.forEach((dice, amount) {
      final current = a[dice] ?? 0;
      a[dice] = current + amount;
    });
  }
}

class _SidearmMinis {
  final int meleeWeapons;
  final int rangedWeapons;

  const _SidearmMinis({
    @required this.meleeWeapons,
    @required this.rangedWeapons,
  })  : assert(meleeWeapons >= 0),
        assert(rangedWeapons >= 0);
}
