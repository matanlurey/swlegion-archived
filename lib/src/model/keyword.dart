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
    disciplinedX: '''
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
    impervious: '''
      While defending, if the attack pool has Pierce X, roll x additional dice.
    ''',
    inspireX: '''
      After your rally step, remove X suppression token(s) from another friendly unit at range 1-2.
    ''',
    infilitrate: '''
      You may deploy anywhere beyond range 3 of all enemy units.
    ''',
    ionX: '''
      A vehicle wounded by an attack that includes this weapon gains X ion token(s).
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
    sidearmX: '''
      While perming an attack of type X, this mini can only use this weapon on this card.
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

  @BuiltValueEnumConst(wireName: 'jump')
  static const Keyword jumpX = _$0;

  @BuiltValueEnumConst(wireName: 'pulling-the-strings')
  static const Keyword pullingTheStrings = _$1;

  @BuiltValueEnumConst(wireName: 'quick-thinking')
  static const Keyword quickThinking = _$2;

  @BuiltValueEnumConst(wireName: 'spotter')
  static const Keyword spotterX = _$3;

  // Passive.

  @BuiltValueEnumConst(wireName: 'arm')
  static const Keyword armXY = _$4;

  @BuiltValueEnumConst(wireName: 'armor')
  static const Keyword armor = _$5;

  @BuiltValueEnumConst(wireName: 'arsenal')
  static const Keyword arsenalX = _$6;

  @BuiltValueEnumConst(wireName: 'blast')
  static const Keyword blast = _$7;

  @BuiltValueEnumConst(wireName: 'bounty')
  static const Keyword bounty = _$bounty;

  @BuiltValueEnumConst(wireName: 'charge')
  static const Keyword charge = _$8;

  @BuiltValueEnumConst(wireName: 'climbing-vehicle')
  static const Keyword climbingVehicle = _$9;

  @BuiltValueEnumConst(wireName: 'compel')
  static const Keyword compel = _$10;

  @BuiltValueEnumConst(wireName: 'cover')
  static const Keyword coverX = _$11;

  @BuiltValueEnumConst(wireName: 'cumbersome')
  static const Keyword cumbersome = _$12;

  @BuiltValueEnumConst(wireName: 'cunning')
  static const Keyword cunning = _$13;

  @BuiltValueEnumConst(wireName: 'danger-sense')
  static const Keyword dangerSenseX = _$14;

  @BuiltValueEnumConst(wireName: 'dauntless')
  static const Keyword dauntless = _$15;

  @BuiltValueEnumConst(wireName: 'deflect')
  static const Keyword deflect = _$16;

  @BuiltValueEnumConst(wireName: 'detonate')
  static const Keyword denotateXY = _$17;

  @BuiltValueEnumConst(wireName: 'disciplined')
  static const Keyword disciplinedX = _$18;

  @BuiltValueEnumConst(wireName: 'enrage')
  static const Keyword enrageX = _$19;

  @BuiltValueEnumConst(wireName: 'entourage')
  static const Keyword entourageX = _$20;

  @BuiltValueEnumConst(wireName: 'expert-climber')
  static const Keyword expertClimber = _$21;

  @BuiltValueEnumConst(wireName: 'fixed')
  static const Keyword fixedX = _$22;

  @BuiltValueEnumConst(wireName: 'full-pivot')
  static const Keyword fullPivot = _$23;

  @BuiltValueEnumConst(wireName: 'guardian')
  static const Keyword guardianX = _$24;

  @BuiltValueEnumConst(wireName: 'gunslinger')
  static const Keyword gunslinger = _$25;

  @BuiltValueEnumConst(wireName: 'heavy-weapon-team')
  static const Keyword heavyWeaponTeam = _$26;

  @BuiltValueEnumConst(wireName: 'high-velocity')
  static const Keyword highVelocity = _$27;

  @BuiltValueEnumConst(wireName: 'immune')
  static const Keyword immuneX = _$28;

  @BuiltValueEnumConst(wireName: 'impact')
  static const Keyword impactX = _$29;

  @BuiltValueEnumConst(wireName: 'impervious')
  static const Keyword impervious = _$impervious;

  @BuiltValueEnumConst(wireName: 'indomitable')
  static const Keyword indomitable = _$30;

  @BuiltValueEnumConst(wireName: 'ion')
  static const Keyword ionX = _$31;

  @BuiltValueEnumConst(wireName: 'inspire')
  static const Keyword inspireX = _$32;

  @BuiltValueEnumConst(wireName: 'infilitrate')
  static const Keyword infilitrate = _$33;

  @BuiltValueEnumConst(wireName: 'low-profile')
  static const Keyword lowProfile = _$34;

  @BuiltValueEnumConst(wireName: 'master-of-the-force')
  static const Keyword masterOfTheForceX = _$35;

  @BuiltValueEnumConst(wireName: 'nimble')
  static const Keyword nimble = _$36;

  @BuiltValueEnumConst(wireName: 'precise')
  static const Keyword preciseX = _$37;

  @BuiltValueEnumConst(wireName: 'pierce')
  static const Keyword pierceX = _$38;

  @BuiltValueEnumConst(wireName: 'plodding')
  static const Keyword plodding = _$39;

  @BuiltValueEnumConst(wireName: 'ready')
  static const Keyword readyX = _$40;

  @BuiltValueEnumConst(wireName: 'relentless')
  static const Keyword relentless = _$41;

  @BuiltValueEnumConst(wireName: 'reposition')
  static const Keyword reposition = _$42;

  @BuiltValueEnumConst(wireName: 'scout')
  static const Keyword scoutX = _$43;

  @BuiltValueEnumConst(wireName: 'sentinel')
  static const Keyword sentinel = _$44;

  @BuiltValueEnumConst(wireName: 'sharpshooter')
  static const Keyword sharpshooterX = _$45;

  @BuiltValueEnumConst(wireName: 'sidearm')
  static const Keyword sidearmX = _$sidearmX;

  @BuiltValueEnumConst(wireName: 'speeder')
  static const Keyword speederX = _$46;

  @BuiltValueEnumConst(wireName: 'spray')
  static const Keyword spray = _$47;

  @BuiltValueEnumConst(wireName: 'stationary')
  static const Keyword stationary = _$48;

  @BuiltValueEnumConst(wireName: 'steady')
  static const Keyword steady = _$49;

  @BuiltValueEnumConst(wireName: 'suppressive')
  static const Keyword suppressive = _$50;

  @BuiltValueEnumConst(wireName: 'take-cover')
  static const Keyword takeCoverX = _$51;

  @BuiltValueEnumConst(wireName: 'teamwork')
  static const Keyword teamworkX = _$52;

  @BuiltValueEnumConst(wireName: 'tow-cable')
  static const Keyword towCable = _$53;

  @BuiltValueEnumConst(wireName: 'uncanny-luck')
  static const Keyword uncannyLuckX = _$54;

  @BuiltValueEnumConst(wireName: 'unhindered')
  static const Keyword unhindered = _$55;

  @BuiltValueEnumConst(wireName: 'weak-point')
  static const Keyword weakPointX = _$56;

  const Keyword._(String name) : super(name);

  @override
  String get name => _$KeywordSerializer._toWire[super.name];

  /// A description of this keyword.
  String get description => (_description[this] ?? '').trim();

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
  static Keyword from(String name) {
    return _$valueOf(_$KeywordSerializer._fromWire[name]);
  }

  /// **WARNING**: Prefer [from].
  @Deprecated('Use "Keyword.from" instead.')
  static Keyword valueOf(String name) => _$valueOf(name);
}
