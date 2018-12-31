import 'database/upgrades/command/commanding_presence.dart' as _i;
import 'database/upgrades/command/esteemed_leader.dart' as _i;
import 'database/upgrades/command/improvised_orders.dart' as _i;
import 'database/upgrades/comms/comms_jammer.dart' as _i;
import 'database/upgrades/comms/hq_uplink.dart' as _i;
import 'database/upgrades/comms/long_range_comlink.dart' as _i;
import 'database/upgrades/elite/duck_and_cover.dart' as _i;
import 'database/upgrades/elite/hunter.dart' as _i;
import 'database/upgrades/elite/tenacity.dart' as _i;
import 'database/upgrades/force/anger.dart' as _i;
import 'database/upgrades/force/battle_meditation.dart' as _i;
import 'database/upgrades/force/force_choke.dart' as _i;
import 'database/upgrades/force/force_push.dart' as _i;
import 'database/upgrades/force/force_reflexes.dart' as _i;
import 'database/upgrades/force/jedi_mind_trick.dart' as _i;
import 'database/upgrades/force/saber_throw.dart' as _i;
import 'database/upgrades/gear/emergency_stims.dart' as _i;
import 'database/upgrades/gear/environmental_gear.dart' as _i;
import 'database/upgrades/gear/grappling_hooks.dart' as _i;
import 'database/upgrades/gear/recon_intel.dart' as _i;
import 'database/upgrades/gear/targeting_scopes.dart' as _i;
import 'database/upgrades/generator/barrage_generator.dart' as _i;
import 'database/upgrades/generator/overcharged_generator.dart' as _i;
import 'database/upgrades/grenades/concussion_grenades.dart' as _i;
import 'database/upgrades/grenades/fragmentation_grenades.dart' as _i;
import 'database/upgrades/grenades/impact_grenades.dart' as _i;
import 'database/upgrades/hardpoint/88_twin_light_blaster_cannon.dart' as _i;
import 'database/upgrades/hardpoint/at_rt_flamethrower.dart' as _i;
import 'database/upgrades/hardpoint/at_rt_laser_cannon.dart' as _i;
import 'database/upgrades/hardpoint/at_rt_rotary_blaster.dart' as _i;
import 'database/upgrades/hardpoint/at_st_mortar_launcher.dart' as _i;
import 'database/upgrades/hardpoint/ax_108_ground_buzzer.dart' as _i;
import 'database/upgrades/hardpoint/dw3_concussion_grenade_launcher.dart' as _i;
import 'database/upgrades/hardpoint/mo_dk_power_harpoon.dart' as _i;
import 'database/upgrades/heavy_weapon/bowcaster_wookie.dart' as _i;
import 'database/upgrades/heavy_weapon/dh_447_sniper.dart' as _i;
import 'database/upgrades/heavy_weapon/dlt_19_stormtrooper.dart' as _i;
import 'database/upgrades/heavy_weapon/dlt_19_x_sniper.dart' as _i;
import 'database/upgrades/heavy_weapon/electrostaff_guard.dart' as _i;
import 'database/upgrades/heavy_weapon/flametrooper.dart' as _i;
import 'database/upgrades/heavy_weapon/hh_12_stormtrooper.dart' as _i;
import 'database/upgrades/heavy_weapon/mpl_57_barrage_trooper.dart' as _i;
import 'database/upgrades/heavy_weapon/mpl_57_ion_trooper.dart' as _i;
import 'database/upgrades/heavy_weapon/proton_charge_saboteur.dart' as _i;
import 'database/upgrades/heavy_weapon/scatter_gun_trooper.dart' as _i;
import 'database/upgrades/heavy_weapon/sonic_charge_saboteur.dart' as _i;
import 'database/upgrades/heavy_weapon/t_7_ion_snowtrooper.dart' as _i;
import 'database/upgrades/heavy_weapon/z_6_trooper.dart' as _i;
import 'database/upgrades/personnel/fleet_trooper.dart' as _i;
import 'database/upgrades/personnel/rebel_trooper.dart' as _i;
import 'database/upgrades/personnel/snowtrooper.dart' as _i;
import 'database/upgrades/personnel/stormtrooper.dart' as _i;
import 'database/upgrades/pilot/general_weiss.dart' as _i;
import 'database/upgrades/pilot/wedge_antilles.dart' as _i;

final aggregate = [
  _i.commandingPresence,
  _i.estmeedLeader,
  _i.improvisedOrders,
  _i.commsJammer,
  _i.hqUplink,
  _i.longRangeComlink,
  _i.duckAndCover,
  _i.hunter,
  _i.tenacity,
  _i.anger,
  _i.battleMeditation,
  _i.forceChoke,
  _i.forcePush,
  _i.forceReflexes,
  _i.jediMindTrick,
  _i.saberThrow,
  _i.emergencyStims,
  _i.environmentalGear,
  _i.grapplingHooks,
  _i.reconIntel,
  _i.targetingScopes,
  _i.barrageGenerator,
  _i.overchargedGenerator,
  _i.concussionGrenades,
  _i.fragmentationGrenades,
  _i.impactGrenades,
  _i.$88TwinLightBlasterCannon,
  _i.atRtFlamethrower,
  _i.atRtLaserCannon,
  _i.atRtRotaryBlaster,
  _i.atStMortarLauncher,
  _i.ax108GroundBuzzer,
  _i.dw3ConcussionGrenadeLauncher,
  _i.moDkPowerHarpoon,
  _i.bowcasterWookie,
  _i.dh447Sniper,
  _i.dlt19Stormtrooper,
  _i.dlt19XSniper,
  _i.electrostaffGuard,
  _i.flametrooper,
  _i.hh12Stormtrooper,
  _i.mpl57BarrageTrooper,
  _i.mpl57IonTrooper,
  _i.protonChargeSaboteur,
  _i.scatterGunTrooper,
  _i.sonicChargeSaboteur,
  _i.t7IonSnowtrooper,
  _i.z6Trooper,
  _i.fleetTrooper,
  _i.rebelTrooper,
  _i.snowtrooper,
  _i.stormtrooper,
  _i.generalWeiss,
  _i.wedgeAntilles
];
class Upgrades {
  const Upgrades._();
  static final commandingPresence = _i.commandingPresence;
  static final estmeedLeader = _i.estmeedLeader;
  static final improvisedOrders = _i.improvisedOrders;
  static final commsJammer = _i.commsJammer;
  static final hqUplink = _i.hqUplink;
  static final longRangeComlink = _i.longRangeComlink;
  static final duckAndCover = _i.duckAndCover;
  static final hunter = _i.hunter;
  static final tenacity = _i.tenacity;
  static final anger = _i.anger;
  static final battleMeditation = _i.battleMeditation;
  static final forceChoke = _i.forceChoke;
  static final forcePush = _i.forcePush;
  static final forceReflexes = _i.forceReflexes;
  static final jediMindTrick = _i.jediMindTrick;
  static final saberThrow = _i.saberThrow;
  static final emergencyStims = _i.emergencyStims;
  static final environmentalGear = _i.environmentalGear;
  static final grapplingHooks = _i.grapplingHooks;
  static final reconIntel = _i.reconIntel;
  static final targetingScopes = _i.targetingScopes;
  static final barrageGenerator = _i.barrageGenerator;
  static final overchargedGenerator = _i.overchargedGenerator;
  static final concussionGrenades = _i.concussionGrenades;
  static final fragmentationGrenades = _i.fragmentationGrenades;
  static final impactGrenades = _i.impactGrenades;
  static final $88TwinLightBlasterCannon = _i.$88TwinLightBlasterCannon;
  static final atRtFlamethrower = _i.atRtFlamethrower;
  static final atRtLaserCannon = _i.atRtLaserCannon;
  static final atRtRotaryBlaster = _i.atRtRotaryBlaster;
  static final atStMortarLauncher = _i.atStMortarLauncher;
  static final ax108GroundBuzzer = _i.ax108GroundBuzzer;
  static final dw3ConcussionGrenadeLauncher = _i.dw3ConcussionGrenadeLauncher;
  static final moDkPowerHarpoon = _i.moDkPowerHarpoon;
  static final bowcasterWookie = _i.bowcasterWookie;
  static final dh447Sniper = _i.dh447Sniper;
  static final dlt19Stormtrooper = _i.dlt19Stormtrooper;
  static final dlt19XSniper = _i.dlt19XSniper;
  static final electrostaffGuard = _i.electrostaffGuard;
  static final flametrooper = _i.flametrooper;
  static final hh12Stormtrooper = _i.hh12Stormtrooper;
  static final mpl57BarrageTrooper = _i.mpl57BarrageTrooper;
  static final mpl57IonTrooper = _i.mpl57IonTrooper;
  static final protonChargeSaboteur = _i.protonChargeSaboteur;
  static final scatterGunTrooper = _i.scatterGunTrooper;
  static final sonicChargeSaboteur = _i.sonicChargeSaboteur;
  static final t7IonSnowtrooper = _i.t7IonSnowtrooper;
  static final z6Trooper = _i.z6Trooper;
  static final fleetTrooper = _i.fleetTrooper;
  static final rebelTrooper = _i.rebelTrooper;
  static final snowtrooper = _i.snowtrooper;
  static final stormtrooper = _i.stormtrooper;
  static final generalWeiss = _i.generalWeiss;
  static final wedgeAntilles = _i.wedgeAntilles;
}

