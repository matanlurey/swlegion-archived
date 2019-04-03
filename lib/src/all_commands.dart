import 'database/commands/faction/imperials/coordinated_fire.dart' as _i;
import 'database/commands/faction/imperials/covert_observation.dart' as _i;
import 'database/commands/faction/imperials/pinned_down.dart' as _i;
import 'database/commands/faction/rebels/covering_fire.dart' as _i;
import 'database/commands/faction/rebels/sabotaged_communications.dart' as _i;
import 'database/commands/faction/rebels/turning_the_tide.dart' as _i;
import 'database/commands/neutral/ambush.dart' as _i;
import 'database/commands/neutral/assault.dart' as _i;
import 'database/commands/neutral/push.dart' as _i;
import 'database/commands/neutral/standing_orders.dart' as _i;
import 'database/commands/units/boba_fett/whipcord_launcher.dart' as _i;
import 'database/commands/units/boba_fett/z_6_jetpack_launcher.dart' as _i;
import 'database/commands/units/boba_fett/zx_flame_projector.dart' as _i;
import 'database/commands/units/bossk/lying_in_wait.dart' as _i;
import 'database/commands/units/bossk/merciless_munititions.dart' as _i;
import 'database/commands/units/bossk/reptilian_rampage.dart' as _i;
import 'database/commands/units/chewbacca/brains_and_brawn.dart' as _i;
import 'database/commands/units/chewbacca/common_cause.dart' as _i;
import 'database/commands/units/chewbacca/notorious_scoundrels.dart' as _i;
import 'database/commands/units/darth_vader/implacable.dart' as _i;
import 'database/commands/units/darth_vader/master_of_evil.dart' as _i;
import 'database/commands/units/darth_vader/new_ways_to_motivate_them.dart'
    as _i;
import 'database/commands/units/director_krennic/annihilation_looms.dart' as _i;
import 'database/commands/units/director_krennic/deploy_the_garrison.dart'
    as _i;
import 'database/commands/units/director_krennic/voracious_ambition.dart' as _i;
import 'database/commands/units/emperor_palpatine.dart/an_entire_legion.dart'
    as _i;
import 'database/commands/units/emperor_palpatine.dart/and_now_you_will_die.dart'
    as _i;
import 'database/commands/units/emperor_palpatine.dart/give_in_to_your_anger.dart'
    as _i;
import 'database/commands/units/general_veers/evasive_maneuvers.dart' as _i;
import 'database/commands/units/general_veers/imperial_discipline.dart' as _i;
import 'database/commands/units/general_veers/maximum_firepower.dart' as _i;
import 'database/commands/units/han_solo/change_of_plans.dart' as _i;
import 'database/commands/units/han_solo/reckless_diversion.dart' as _i;
import 'database/commands/units/han_solo/sorry_about_the_mess.dart' as _i;
import 'database/commands/units/jyn_erso/complete_the_mission.dart' as _i;
import 'database/commands/units/jyn_erso/rebellious.dart' as _i;
import 'database/commands/units/jyn_erso/trust_goes_both_ways.dart' as _i;
import 'database/commands/units/leia_organa/coordinated_bombardment.dart' as _i;
import 'database/commands/units/leia_organa/no_time_for_sorrows.dart' as _i;
import 'database/commands/units/leia_organa/somebody_has_to_save_our_skins.dart'
    as _i;
import 'database/commands/units/luke_skywalker/my_ally_is_the_force.dart' as _i;
import 'database/commands/units/luke_skywalker/return_of_the_jedi.dart' as _i;
import 'database/commands/units/luke_skywalker/son_of_skywalker.dart' as _i;

final aggregate = [
  _i.coordinatedFire,
  _i.covertObservation,
  _i.pinnedDown,
  _i.coveringFire,
  _i.sabotagedCommunications,
  _i.turningTheTide,
  _i.ambush,
  _i.assault,
  _i.push,
  _i.standingOrders,
  _i.whipcordLauncher,
  _i.z6JetpackLauncher,
  _i.zxFlameProjector,
  _i.lyingInWait,
  _i.mercilessMunitions,
  _i.reptilianRampage,
  _i.brainsAndBrawn,
  _i.commonCause,
  _i.notoriousScoundrels,
  _i.implacable,
  _i.masterOfEvil,
  _i.newWaysToMovivateThem,
  _i.annihilationLooms,
  _i.deployTheGarrison,
  _i.voraciousAmbition,
  _i.anEntireLegion,
  _i.andNowYouWillDie,
  _i.giveInToYourAnger,
  _i.evasiveManeuvers,
  _i.imperialDiscipline,
  _i.maximumFirepower,
  _i.changeOfPlans,
  _i.recklessDiversion,
  _i.sorryAboutTheMess,
  _i.completeTheMission,
  _i.rebellious,
  _i.trustGoesBothWays,
  _i.coordinatedBombardment,
  _i.noTimeForSorrows,
  _i.somebodyHasToSaveOurSkins,
  _i.myAllyIsTheForce,
  _i.returnOfTheJedi,
  _i.sonOfSkywalker
];

class Commands {
  const Commands._();
  static final coordinatedFire = _i.coordinatedFire;
  static final covertObservation = _i.covertObservation;
  static final pinnedDown = _i.pinnedDown;
  static final coveringFire = _i.coveringFire;
  static final sabotagedCommunications = _i.sabotagedCommunications;
  static final turningTheTide = _i.turningTheTide;
  static final ambush = _i.ambush;
  static final assault = _i.assault;
  static final push = _i.push;
  static final standingOrders = _i.standingOrders;
  static final whipcordLauncher = _i.whipcordLauncher;
  static final z6JetpackLauncher = _i.z6JetpackLauncher;
  static final zxFlameProjector = _i.zxFlameProjector;
  static final lyingInWait = _i.lyingInWait;
  static final mercilessMunitions = _i.mercilessMunitions;
  static final reptilianRampage = _i.reptilianRampage;
  static final brainsAndBrawn = _i.brainsAndBrawn;
  static final commonCause = _i.commonCause;
  static final notoriousScoundrels = _i.notoriousScoundrels;
  static final implacable = _i.implacable;
  static final masterOfEvil = _i.masterOfEvil;
  static final newWaysToMovivateThem = _i.newWaysToMovivateThem;
  static final annihilationLooms = _i.annihilationLooms;
  static final deployTheGarrison = _i.deployTheGarrison;
  static final voraciousAmbition = _i.voraciousAmbition;
  static final anEntireLegion = _i.anEntireLegion;
  static final andNowYouWillDie = _i.andNowYouWillDie;
  static final giveInToYourAnger = _i.giveInToYourAnger;
  static final evasiveManeuvers = _i.evasiveManeuvers;
  static final imperialDiscipline = _i.imperialDiscipline;
  static final maximumFirepower = _i.maximumFirepower;
  static final changeOfPlans = _i.changeOfPlans;
  static final recklessDiversion = _i.recklessDiversion;
  static final sorryAboutTheMess = _i.sorryAboutTheMess;
  static final completeTheMission = _i.completeTheMission;
  static final rebellious = _i.rebellious;
  static final trustGoesBothWays = _i.trustGoesBothWays;
  static final coordinatedBombardment = _i.coordinatedBombardment;
  static final noTimeForSorrows = _i.noTimeForSorrows;
  static final somebodyHasToSaveOurSkins = _i.somebodyHasToSaveOurSkins;
  static final myAllyIsTheForce = _i.myAllyIsTheForce;
  static final returnOfTheJedi = _i.returnOfTheJedi;
  static final sonOfSkywalker = _i.sonOfSkywalker;
}
