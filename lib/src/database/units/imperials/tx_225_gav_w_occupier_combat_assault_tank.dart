import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final tx225GavWOccupierCombatAssaultTank = Unit(
  id: 'tx-225-gav-w-occupier-combat-assault-tank',
  name: 'TX-225 GAVw Occupier Combat Assault Tank',
  faction: Faction.imperials,
  miniatures: 1,
  rank: Rank.heavy,
  type: UnitType.groundVehicle,
  wounds: 8,
  resilience: 6,
  defense: DefenseDice.red,
  speed: 1,
  points: 155,
  upgrades: const {
    UpgradeSlot.comms: 1,
    UpgradeSlot.hardPoint: 3,
    UpgradeSlot.pilot: 1,
  },
  weapons: [
    Weapons.forwardTwinMk2EWCannons,
    Weapons.lateralQuadMK2EWCannons,
  ],
  keywords: {
    UnitKeyword.kArmor: '',
    UnitKeyword.kArsenal: 2,
    UnitKeyword.kReposition: '',
    UnitKeyword.kTransportOpen: 1,
    UnitKeyword.kWeakPointSides: 1,
  },
  waves: const [
    Wave.wAtStUnitExpansion,
  ],
);
