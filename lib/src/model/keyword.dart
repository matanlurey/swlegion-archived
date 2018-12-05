import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'keyword.g.dart';

/// Represents possible keywords in the game.
///
/// See http://starwarslegion.wikia.com/wiki/Keywords.
class Keyword extends EnumClass {
  // Activated.

  static final _isActivated = Set.of(const [
    jumpX,
    pullingTheStrings,
    quickThinking,
    spotterX,
  ]);

  static const _description = {
    jumpX: '''
      Perform a move during which you ignore terrain that is height X or lower. This is treated as a move action.
    ''',
    pullingTheStrings: '''
      Choose a friendly trooper unit at range 1-2. That unit may perform a free attack action or a free move action.
    ''',
    quickThinking: '''
      Gain 1 aim token and 1 dodge token.
    ''',
    spotterX: '''
      Choose up to X friendly units at range 1. Each chosen unit gains an aim token.
    ''',
    armXY: '''
      Place X Y token(s) within range 1 and in line of sight of your unit leader.
    ''',
    armor: '''
      While defending, cancel all hit results.
    ''',
    arsenalX: '''
      While attacking, each model on this unit can use up to X of its weapons.
    ''',
    blast: '''
      Ignore cover.
    ''',
    charge: '''
      After you perform a move action, you may perform a free melee attack action.
    ''',
    climbingVehicle: '''
      You are treated as a trooper for the purposes of vertical movement.
    ''',
    compel: '''
      After another friendly unit at range 1-2 rallies, if it is suppressed but not panicked, it may gain 1 suppression token to perform a free move action.
    ''',
    coverX: '''
      While defending against a ranged attack, improve your cover by X.
    ''',
    cumbersome: '''
      You cannot use this weapon and move during the same activation.
    ''',
    cunning: '''
      When your commander specific command cards are played, if there would be a bid for priority, treat your command card as though it had 1 fewer pip.
    ''',
    dangerSenseX: '''
      You may choose not to remove your suppression tokens. While defending against a ranged attack, roll 1 extra defense die for each suppression token you have, adding up to X extra dice.
    ''',
    dauntless: '''
      After you rally, if you are suppressed but not panicked, you may gain 1 suppression token to perform a free move action.
    ''',
    deflect: '''
      While defending, if you spend a dodge token, you gain “Surge: Block”: if it’s a ranged attack, the attacker suffers 1 wound for each Surge rolled.
    ''',
    denotateXY: '''

    ''',
    disciplined: '''
      When you are issued an order, you may remove up to X suppression tokens.
    ''',
    enrageX: '''
      While you have X or more wound tokens, treat your courage as '-' and gain Charge.
    ''',
    entourageX: '''
      While building an army, ignore the rank of 1 X unit. During the Command Phase, you may issue an order to a friendly X unit at range 1-2.
    ''',
    expertClimber: '''
      While clambering, do not roll defense dice or suffer wounds.
    ''',
    fixedX: '''
      The defender must be inside your X arc.
    ''',
    fullPivot: '''
      When you pivot, you can pivot up to 360°.
    ''',
    guardianX: '''
      When a friendly unit at range 1 is defending against a ranged attack, you may choose up to X hit result(s). For each result chosen, roll a defense die as though you were the defender.
    ''',
    gunslinger: '''
      After you perform a ranged attack action, you may perform an additional ranged attack against a different unit.
    ''',
    heavyWeaponTeam: '''
      You must equip a Heavy Weapon upgrade card. The mini added by that card is your unit leader.
    ''',
    highVelocity: '''
      While attacking, if each weapon in your attack pool has High Velocity, the defender cannot spend dodge tokens.
    ''',
    immuneX: '''
      X cannot be used against you.
    ''',
    impactX: '''
      While attacking a unit that has ARMOR, change up to X hit result(s) to (a) critical hit result(s).
    ''',
    indomitable: '''
      During the Rally step, roll red defense dice instead of white.
    ''',
    ionX: '''
      A vehicle wounded by an attack that includes this weapon gains X ion token(s).
    ''',
    inspireX: '''
      After your rally step, remove X suppression token(s) from another friendly unit at range 1-2.
    ''',
    infilitrate: '''
      You may deploy anywhere beyond range 3 of all enemy units.
    ''',
    lowProfile: '''
      While defending, if you have light cover, improve your cover by 1.
    ''',
    masterOfTheForceX: '''
      During the End Phase, you may ready X of your Force upgrade cards.
    ''',
    nimble: '''
      After defending, if you spent 1 or more dodge tokens, gain 1 dodge token.
    ''',
    preciseX: '''
      When you spend an aim token, reroll up to X additional die/dice.
    ''',
    pierceX: '''
      When attacking, ignore up to X block results.
    ''',
    plodding: '''
      During your activation, you can perform only 1 standard move.
    ''',
    readyX: '''
      After you perform a standby action, gain 1 aim token.
    ''',
    relentless: '''
      After you perform a move action, you may perform a free attack action.
    ''',
    reposition: '''
      Either before or after you perform a standard move, you may perform a free pivot action.
    ''',
    scoutX: '''
      After you deploy, you may perform a speed X move.
    ''',
    sentinel: '''
      Your standby range is 1-3.
    ''',
    sharpshooterX: '''
      While performing a ranged attack, reduce the defender’s cover by X.
    ''',
    speederX: '''
      While moving, ignore terrain that is height X or lower. When you activate, perform a compulsory move.
    ''',
    spray: '''
      Add this weapon's dice to the attack pool one time for each mini in the defending unit to which line of sight is not blocked.
    ''',
    stationary: '''
      You cannot perform moves, except pivots.
    ''',
    steady: '''
      After you perform a move action, you may perform a free ranged attack action.
    ''',
    suppressive: '''
      After you perform an attack, the defender that this weapon was used against gains 1 suppression token.
    ''',
    takeCoverX: '''
      Choose up to X friendly trooper units at range 1. Each chosen unit gains a dodge token.
    ''',
    teamworkX: '''
      While you are at range 1-2 of X, when you or X gains an aim or dodge token, then other unit gains a token of the same type.
    ''',
    towCable: '''
      After a vehicle is wounded by an attack that includes this weapon, perform a pivot with that vehicle.
    ''',
    uncannyLuckX: '''
      While defending, you may reroll up to X defense dice.
    ''',
    unhindered: '''
      You ignore the effects of difficult terrain.
    ''',
    weakPointX: '''
      While defending, if the attacker’s unit leader is inside your Y arc, the attack pool gains Impact X.
    ''',
  };

  @BuiltValueEnumConst(wireName: 'JUMP')
  static const Keyword jumpX = _$0;

  @BuiltValueEnumConst(wireName: 'PULLING_THE_STRINGS')
  static const Keyword pullingTheStrings = _$1;

  @BuiltValueEnumConst(wireName: 'QUICK_THINKING')
  static const Keyword quickThinking = _$2;

  @BuiltValueEnumConst(wireName: 'SPOTTER')
  static const Keyword spotterX = _$3;

  // Passive.

  @BuiltValueEnumConst(wireName: 'ARM')
  static const Keyword armXY = _$4;

  @BuiltValueEnumConst(wireName: 'ARMOR')
  static const Keyword armor = _$5;

  @BuiltValueEnumConst(wireName: 'ARSENAL')
  static const Keyword arsenalX = _$6;

  @BuiltValueEnumConst(wireName: 'BLAST')
  static const Keyword blast = _$7;

  @BuiltValueEnumConst(wireName: 'CHARGE')
  static const Keyword charge = _$8;

  @BuiltValueEnumConst(wireName: 'CLIMBING_VEHICLE')
  static const Keyword climbingVehicle = _$9;

  @BuiltValueEnumConst(wireName: 'COMPEL')
  static const Keyword compel = _$10;

  @BuiltValueEnumConst(wireName: 'COVER')
  static const Keyword coverX = _$11;

  @BuiltValueEnumConst(wireName: 'CUMBERSOME')
  static const Keyword cumbersome = _$12;

  @BuiltValueEnumConst(wireName: 'CUNNING')
  static const Keyword cunning = _$13;

  @BuiltValueEnumConst(wireName: 'DANGER_SENSE')
  static const Keyword dangerSenseX = _$14;

  @BuiltValueEnumConst(wireName: 'DAUNTLESS')
  static const Keyword dauntless = _$15;

  @BuiltValueEnumConst(wireName: 'DEFLECT')
  static const Keyword deflect = _$16;

  @BuiltValueEnumConst(wireName: 'DETONATE')
  static const Keyword denotateXY = _$17;

  @BuiltValueEnumConst(wireName: 'DISCIPLINED')
  static const Keyword disciplined = _$18;

  @BuiltValueEnumConst(wireName: 'ENRAGE')
  static const Keyword enrageX = _$19;

  @BuiltValueEnumConst(wireName: 'ENTOURAGE')
  static const Keyword entourageX = _$20;

  @BuiltValueEnumConst(wireName: 'EXPERT_CLIMBER')
  static const Keyword expertClimber = _$21;

  @BuiltValueEnumConst(wireName: 'FIXED')
  static const Keyword fixedX = _$22;

  @BuiltValueEnumConst(wireName: 'FULL_PIVOT')
  static const Keyword fullPivot = _$23;

  @BuiltValueEnumConst(wireName: 'GUARDIAN')
  static const Keyword guardianX = _$24;

  @BuiltValueEnumConst(wireName: 'GUNSLINGER')
  static const Keyword gunslinger = _$25;

  @BuiltValueEnumConst(wireName: 'HEAVY_WEAPON_TEAM')
  static const Keyword heavyWeaponTeam = _$26;

  @BuiltValueEnumConst(wireName: 'HIGH_VELOCITY')
  static const Keyword highVelocity = _$27;

  @BuiltValueEnumConst(wireName: 'IMMUNE')
  static const Keyword immuneX = _$28;

  @BuiltValueEnumConst(wireName: 'IMPACT')
  static const Keyword impactX = _$29;

  @BuiltValueEnumConst(wireName: 'INDOMITABLE')
  static const Keyword indomitable = _$30;

  @BuiltValueEnumConst(wireName: 'ION')
  static const Keyword ionX = _$31;

  @BuiltValueEnumConst(wireName: 'INSPIRE')
  static const Keyword inspireX = _$32;

  @BuiltValueEnumConst(wireName: 'INFILTRATE')
  static const Keyword infilitrate = _$33;

  @BuiltValueEnumConst(wireName: 'LOW_PROFILE')
  static const Keyword lowProfile = _$34;

  @BuiltValueEnumConst(wireName: 'MASTER_OF_THE_FORCE')
  static const Keyword masterOfTheForceX = _$35;

  @BuiltValueEnumConst(wireName: 'NIMBLE')
  static const Keyword nimble = _$36;

  @BuiltValueEnumConst(wireName: 'PRECISE')
  static const Keyword preciseX = _$37;

  @BuiltValueEnumConst(wireName: 'PIERCE')
  static const Keyword pierceX = _$38;

  @BuiltValueEnumConst(wireName: 'PLODDING')
  static const Keyword plodding = _$39;

  @BuiltValueEnumConst(wireName: 'READY')
  static const Keyword readyX = _$40;

  @BuiltValueEnumConst(wireName: 'RELENTLESS')
  static const Keyword relentless = _$41;

  @BuiltValueEnumConst(wireName: 'REPOSITION')
  static const Keyword reposition = _$42;

  @BuiltValueEnumConst(wireName: 'SCOUT')
  static const Keyword scoutX = _$43;

  @BuiltValueEnumConst(wireName: 'SENTINEL')
  static const Keyword sentinel = _$44;

  @BuiltValueEnumConst(wireName: 'SHARPSHOOTER')
  static const Keyword sharpshooterX = _$45;

  @BuiltValueEnumConst(wireName: 'SPEEDER')
  static const Keyword speederX = _$46;

  @BuiltValueEnumConst(wireName: 'SPRAY')
  static const Keyword spray = _$47;

  @BuiltValueEnumConst(wireName: 'STATIONARY')
  static const Keyword stationary = _$48;

  @BuiltValueEnumConst(wireName: 'STEADY')
  static const Keyword steady = _$49;

  @BuiltValueEnumConst(wireName: 'SUPPRESSIVE')
  static const Keyword suppressive = _$50;

  @BuiltValueEnumConst(wireName: 'TAKE_COVER')
  static const Keyword takeCoverX = _$51;

  @BuiltValueEnumConst(wireName: 'TEAMWORK')
  static const Keyword teamworkX = _$52;

  @BuiltValueEnumConst(wireName: 'TOW_CABLE')
  static const Keyword towCable = _$53;

  @BuiltValueEnumConst(wireName: 'UNCANNY_LUCK')
  static const Keyword uncannyLuckX = _$54;

  @BuiltValueEnumConst(wireName: 'UNHINDERED')
  static const Keyword unhindered = _$55;

  @BuiltValueEnumConst(wireName: 'WEAK_POINT')
  static const Keyword weakPointX = _$56;

  const Keyword._(String name) : super(name);

  /// A description of this keyword.
  String get description => _description[this];

  /// Whether this keyword must be triggered to use.
  bool get isActivated => _isActivated.contains(this);

  /// Whether this keyword does not need to be activated to use.
  bool get isPassive => !isActivated;

  /// Support for serializing instances of [Keyword].
  static Serializer<Keyword> get serializer => _$keywordSerializer;

  /// All known values of [Keyword].
  static BuiltSet<Keyword> get values => _$values;

  /// Parses and returns [name] into the cooresponding [Keyword] value.
  ///
  /// Throws [ArgumentError] if no match is found.
  static Keyword valueOf(String name) => _$valueOf(name);
}
