import 'database/upgrades/command/commanding_presence.dart';
import 'database/upgrades/command/esteemed_leader.dart';
import 'database/upgrades/command/improvised_orders.dart';
import 'database/upgrades/comms/comms_jammer.dart';
import 'database/upgrades/comms/hq_uplink.dart';
import 'database/upgrades/comms/long_range_comlink.dart';
import 'database/upgrades/elite/duck_and_cover.dart';
import 'database/upgrades/elite/hunter.dart';
import 'database/upgrades/elite/tenacity.dart';
import 'database/upgrades/force/anger.dart';
import 'database/upgrades/force/battle_meditation.dart';
import 'database/upgrades/force/force_choke.dart';
import 'database/upgrades/force/force_push.dart';
import 'database/upgrades/force/force_reflexes.dart';
import 'database/upgrades/force/jedi_mind_trick.dart';
import 'database/upgrades/force/saber_throw.dart';
import 'database/upgrades/gear/environmental_gear.dart';
import 'database/upgrades/gear/grappling_hooks.dart';
import 'database/upgrades/gear/recon_intel.dart';
import 'database/upgrades/gear/targeting_scopes.dart';
import 'database/upgrades/generator/barrage_generator.dart';
import 'database/upgrades/generator/overcharged_generator.dart';
import 'database/upgrades/grenades/concussion_grenades.dart';
import 'database/upgrades/grenades/fragmentation_grenades.dart';
import 'database/upgrades/grenades/impact_grenades.dart';
import 'database/upgrades/hardpoint/88_twin_light_blaster_cannon.dart';
import 'database/upgrades/hardpoint/at_rt_flamethrower.dart';
import 'database/upgrades/hardpoint/at_rt_laser_cannon.dart';
import 'database/upgrades/hardpoint/at_rt_rotary_blaster.dart';
import 'database/upgrades/hardpoint/at_st_mortar_launcher.dart';
import 'database/upgrades/hardpoint/ax_108_ground_buzzer.dart';
import 'database/upgrades/hardpoint/dw3_concussion_grenade_launcher.dart';
import 'database/upgrades/hardpoint/mo_dk_power_harpoon.dart';
import 'database/upgrades/heavy_weapon/dh_447_sniper.dart';
import 'database/upgrades/heavy_weapon/dlt_19_stormtrooper.dart';
import 'database/upgrades/heavy_weapon/dlt_19_x_sniper.dart';
import 'database/upgrades/heavy_weapon/electrostaff_guard.dart';
import 'database/upgrades/heavy_weapon/flametrooper.dart';
import 'database/upgrades/heavy_weapon/hh_12_stormtrooper.dart';
import 'database/upgrades/heavy_weapon/mpl_57_barrage_trooper.dart';
import 'database/upgrades/heavy_weapon/mpl_57_ion_trooper.dart';
import 'database/upgrades/heavy_weapon/proton_charge_saboteur.dart';
import 'database/upgrades/heavy_weapon/scatter_gun_trooper.dart';
import 'database/upgrades/heavy_weapon/sonic_charge_saboteur.dart';
import 'database/upgrades/heavy_weapon/t_7_ion_snowtrooper.dart';
import 'database/upgrades/heavy_weapon/z_6_trooper.dart';
import 'database/upgrades/personnel/fleet_trooper.dart';
import 'database/upgrades/personnel/rebel_trooper.dart';
import 'database/upgrades/personnel/snowtrooper.dart';
import 'database/upgrades/personnel/stormtrooper.dart';
import 'database/upgrades/pilot/general_weiss.dart';
import 'database/upgrades/pilot/wedge_antilles.dart';

final aggregate = [
  commandingPresence,
  estmeedLeader,
  improvisedOrders,
  commsJammer,
  hqUplink,
  longRangeComlink,
  duckAndCover,
  hunter,
  tenacity,
  anger,
  battleMeditation,
  forceChoke,
  forcePush,
  forceReflexes,
  jediMindTrick,
  saberThrow,
  environmentalGear,
  grapplingHooks,
  reconIntel,
  targetingScopes,
  barrageGenerator,
  overchargedGenerator,
  concussionGrenades,
  fragmentationGrenades,
  impactGrenades,
  $88TwinLightBlasterCannon,
  atRtFlamethrower,
  atRtLaserCannon,
  atRtRotaryBlaster,
  atStMortarLauncher,
  ax108GroundBuzzer,
  dw3ConcussionGrenadeLauncher,
  moDkPowerHarpoon,
  dh447Sniper,
  dlt19Stormtrooper,
  dlt19XSniper,
  electrostaffGuard,
  flametrooper,
  hh12Stormtrooper,
  mpl57BarrageTrooper,
  mpl57IonTrooper,
  protonChargeSaboteur,
  scatterGunTrooper,
  sonicChargeSaboteur,
  t7IonSnowtrooper,
  z6Trooper,
  fleetTrooper,
  rebelTrooper,
  snowtrooper,
  stormtrooper,
  generalWeiss,
  wedgeAntilles
];
