import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

import 'reference.dart';

part 'keyword.aggregate.dart';

String _normalize(String text) => text.trim();

abstract class Keyword<T extends Keyword<T>> extends Reference<T> {
  /// Display name of the keyword.
  final String displayName;

  /// Full description of the keyword.
  final String description;

  /// Whether this keyword has a numeric value that can be accumulated.
  ///
  /// For example `'Pierce 1'` + `'Pierce 1'` should result in `'Pierce 2'`.
  final bool isNumeric;

  Keyword({
    @required String id,
    @required this.displayName,
    @required String description,
    this.isNumeric = false,
  })  : assert(displayName != null),
        assert(description != null),
        assert(isNumeric != null),
        description = _normalize(description),
        super(id);
}

class UnitKeyword extends Keyword<UnitKeyword> {
  static final Serializer<UnitKeyword> serializer = IndexableSerializer(
    _index,
    wireName: 'unitKeyword',
    types: const [UnitKeyword],
  );

  static final values = BuiltSet.of(_$unitKeywordValues);

  static final _index = BuiltMap.of(
    Map.fromEntries(
      values.map((e) => MapEntry(e.id, e)),
    ),
  );

  static final kArmor = UnitKeyword._(
    id: 'armor',
    displayName: 'Armor',
    description: r'''
      During the "Modify Attack Dice" step of an attack, if the defender has the
      **ARMOR** keyword, that unit can cancel all hit results produced by the
      attack roll.

      * The attacker resolves abilities during the "Modify Attack Dice" step of
        an attack before the defender resolves abilities during that step. As
        such, the **IMPACT** keyword can be used to change hit results to
        critical results before the **ARMOR** keyword can be used to cancel hit
        results.

      * When a player cancels a hit result, that die is removed from the attack
        pool.
    ''',
  );

  static final kArsenal = UnitKeyword._(
    id: 'arsenal',
    displayName: 'Arsenal X',
    description: r'''
      When choosing weapons during the "Form Attack Pool" step of an attack,
      each mini in a unit that has the **ARSENAL X** keyword can choose a number
      of its weapons equal to the value of x. Each chosen weapon contributes its
      dice and keywords to the attack pool.

      * To use a weapon during an attack, the defender must be at or within any
        of the weapon's ranges.

      * A mini has the **ARSENAL X** keyword, can divide its weapons between any
        number of units, forming a separate dice pool for each weapon or
        combination of weapons.
    ''',
    isNumeric: true,
  );

  static final kBounty = UnitKeyword._(
    id: 'bounty',
    displayName: 'Bounty',
    description: r'''
      After setup, a unit with the **BOUNTY** keyword chooses an enemy commander
      or enemy operative and marks that unit with a victory token. That token is
      placed on the battlefield near the unit leader, and remains with the unit
      as it moves around the battlefield.

      After a unit with the **BOUNTY** keyword defeats a unit with a victoy
      token (typically by performing an attack against that unit which causes
      it to be defeated), the victory token moves to the unit with **BOUNTY**.

      At the end of the game, if a player controls a unit that the **BOUNTY**
      keyword and a victory token from defeating another unit, and the unit has
      not been defeated itself, that player gains 1 victory token. A player
      gains 1 victory token in this way for each unit they control that meets
      these requirements.
    ''',
  );

  static final kCharge = UnitKeyword._(
    id: 'charge',
    displayName: 'Charge',
    description: r'''
      After a unit has the **CHARGE** keyword performs a move action into base
      contact to start a melee with an enemy unit, it may perform a free melee
      attack action against that unit.
    ''',
  );

  static final kClimbingVehicle = UnitKeyword._(
    id: 'climbing-vehicle',
    displayName: 'Climbing Vehicle',
    description: r'''
      A unit that has the **CLIMBING VEHICLE** keyword is treated as a trooper
      for the purpose of vertical movement.
    ''',
  );

  static final kCompel = UnitKeyword._(
    id: 'compel',
    displayName: 'Compel',
    description: r'''
      After another friendly unit at range 1-2 rallies, if it is suppressed but
      not panicked, it may gain 1 suppression to perform a free move action.
    ''',
  );

  static final kCover = UnitKeyword._(
    id: 'cover',
    displayName: 'Cover X',
    description: r'''
      During the "Apply Dodge and Cover" step of a ranged attack, if the
      defender has the **COVER X** keyword, it improves its cover by a number
      equal to X.
    ''',
    isNumeric: true,
  );

  static final kCunning = UnitKeyword._(
    id: 'cunning',
    displayName: 'Cunning',
    description: r'''
      When your commander-specific command cards are played, if there would be
      a tie for priority, treat your command card as though it had 1 fewer pip.
    ''',
  );

  static final kDangerSense = UnitKeyword._(
    id: 'danger-sense',
    displayName: 'Danger Sense X',
    description: r'''
      You may choose not to remove your suppression tokens.
      While defeinding against a ranged attack, roll 1 extra defence dice for each suppression token you have, adding up to X extra dice.
    ''',
    isNumeric: true,
  );

  static final kDauntless = UnitKeyword._(
    id: 'dauntless',
    displayName: 'Dauntless',
    description: r'''
      After you rally, if you are suppressed but not panicked, you may gain 1
      suppression token to perform a free move action.
    ''',
  );

  static final kDeflect = UnitKeyword._(
    id: 'deflect',
    displayName: 'Deflect',
    description: r'''
      While a unit that has the **DEFLECT KEYWORD** is defending, if it spends
      a dodge token, any defense surge results are converted to block results;
      additionally, if the attack is ranged, the attacker suffers one wound for
      each surge result by the defender during the "Roll Defense Dice" step.
    ''',
  );

  static final kDisciplined = UnitKeyword._(
    id: 'discplined',
    displayName: 'Disciplined X',
    description: r'''
      When a unit with the **DISCIPLINED X** keyword is issued an order, it may
      remove up to X suppression tokens.
    ''',
    isNumeric: true,
  );

  static final kEnrage = UnitKeyword._(
    id: 'enrange',
    displayName: 'Enrage X',
    description: r'''
      While a unit with the **ENRAGE X** keyword has wound tokens equal to or
      exceeding X, treat that unit's courage value as "-" and that unit gains
      the **CHARGE** keyword.
    ''',
    isNumeric: true,
  );

  static final kEntourage = UnitKeyword._(
    id: 'entourage',
    displayName: 'Entourage: Unit Name',
    description: r'''
      The **ENTOURAGE** keyword indicates that a unit is often accompanied or
      protected by another specific unit. The **ENTOURAGE** keyword specifically
      states the name of this other unit. When building an army, if a player
      includes a unit with the **ENTOURAGE** keyword, they may ignore the rank
      (but not points value) of a unit that has the name specified by the
      **ENTOURAGE** keyword. Ignoring the rank of a unit means that the unit's
      rank does not count against the rank restrictions for building a standard
      army. This may cause an army to have more units of a specific rank than
      the rules for building a standard army normally allows; because of the
      **ENTOURAGE** keyword, such an army still meets the rules for building a
      standard army.

      Each Command Phase, during the Issue Orders step, a unit with the
      **ENTOURAGE** keyword may issue an order to a friendly unit at range 1 - 2
      that has the name specified by the **ENTOURAGE** keyword.

      * Orders issued with the **ENTOURAGE** keyword are considered to be issued
        by the unit that has the **ENTOURAGE** keyword.

      * Game effects that trigger when a unit is issued an order, such as those
        on command cards, trigger when a unit is issued an order by the
        **ENTOURAGE** keyword.

      * When issuing an order via the **ENTOURAGE** keyword, the order **must**
        be issued to a unit thast has the name specified by the **ENTOURAGE**
        keyword, however other game effects that trigger **when** a unit is
        issued an order may cause the order to be issued to a different unit
        instead.
    ''',
  );

  static final kExpertClimber = UnitKeyword._(
    id: 'expert-climber',
    displayName: 'Expert Climber',
    description: r'''
      Units tyhat have the **EXPERT CLIMBER** keyword are adept at quickly
      scaling vertical surfaces. When a unit that has the **EXPERT CLIMBER**
      keyword clambers, it does not roll any white defense dice to suffer
      wounds.
    ''',
  );

  static final kFullPivot = UnitKeyword._(
    id: 'full-pivot',
    displayName: 'Full Pivot',
    description: r'''
      When a unit with the **FULL PIVOT** keyword performs a pivot, it can
      piuvot up to 360 degrees.
    ''',
  );

  static final kGuardian = UnitKeyword._(
    id: 'guardian',
    displayName: 'Guardian',
    description: r'''
      While a friendly troopger unit at range 1 and in line of sight is
      defending against a ranged attack, a unit that the **GUARDIAN X** keyword
      may cancel up to X hit results. For each hit result cancelled, the unit
      with the **GUARDIAN X** keyword rolls a defense die matching its defense.
      After converting defense surge results according to its surge chart, the
      unit with the **GUARDIAN X** keyword suffers 1 wound for each blank
      result.

      * **GUARDIAN X** cannot be used to cancel critical results.
    ''',
    isNumeric: true,
  );

  static final kGunslinger = UnitKeyword._(
    id: 'gunslinger',
    displayName: 'Gunslinger',
    description: r'''
      After a unit with the **GUNSLINGER** keyword performs a ranged attack
      action against a unit, it may perform an additional ranged attack against
      a different unit.

      * This additonal attack is not an attack action or a free attack action.
    ''',
  );

  static final kHeavyWeaponTeam = UnitKeyword._(
    id: 'heavy-weapon-team',
    displayName: 'Heavy Weapon Team',
    description: r'''
      A unit with the **HEAVY WEAPON TEAM** keyword must equip a heavy weapon
      upgrade card. The heavy weapon mini added to the unit by the upgrade card
      is the unit leader.

      * If the unit leader of a unit with the **HEAVY WEAPON TEAM** keyword is
        defeated, replace one of the remaining minis with a heavy weapon mini
        from an equipped heavy weapon upgrade card.
    ''',
  );

  static final kImmuneBlast = UnitKeyword._(
    id: 'immune-blast',
    displayName: 'Immune: Blast',
    description: r'''
      While a unit with the **IMMUNE: BLAST** keyword is defending, the effects
      of the the **BLAST** keyword are ignored.
    ''',
  );

  static final kImmuneMelee = UnitKeyword._(
    id: 'immune-melee',
    displayName: 'Immune: Melee',
    description: r'''
      Enemy units cannot be placed in base contact with a unit that has the
      **IMMUNE: MELEE** keyword.
    ''',
  );

  static final kImmunePierce = UnitKeyword._(
    id: 'immune-pierce',
    displayName: 'Immune: Pierce',
    description: r'''
      While a unit with the **IMMUNE: PIERCE** keyword is defending, the
      attacker cannot use the **PIERCE** keyword to cancel block results on
      defense dice rolled by the defender.
  
      * The **PIERCE** keyword may be used on defense dice rolled by a unit
        using the **GUARDIAN X** keyword, even during an attack in which the
        defender has the **IMMUNE: PIERCE** keyword.
    ''',
  );

  static final kImpervious = UnitKeyword._(
    id: 'impervious',
    displayName: 'Impervious',
    description: r'''
      While a unit with the **IMPERVIOUS** keyword is defending, it rolls a
      number of additional defense dice equal to the **PIERCE X** value of the
      attack pool.

      * The number of additional defense dice rolled is regardless of the number
        of hit and crit results rolled during the attack.

      * After rolling additional defense dice, results are still cancelled as
        normal during the "Modify Defense Dice" step by the **PIERCE X**
        keyword.
    ''',
  );

  static final kIndomitable = UnitKeyword._(
    id: 'indomitable',
    displayName: 'Indomitable',
    description: r'''
      When a unit has the **INDOMITABLE** keyword performs its rally step,
      instead of rolling white defense dice, it rolls a number of red defense
      dice equal to the number of suppression tokens it has.
    ''',
  );

  static final kInfiltrate = UnitKeyword._(
    id: 'infiltrate',
    displayName: 'Infilitrate',
    description: r'''
      You may deploy anywhere beyond range 3 of all enemy units.
    ''',
  );

  static final kInspire = UnitKeyword._(
    id: 'inspire',
    displayName: 'Inspire',
    description: r'''
      After a unit with the **INSPIRE X** keyword performs its "Rally" step,
      remove a total of up to X suppression tokens from other friendly units at
      range 1 - 2.

      * A unit performs its "Rally" step even if it has no suppression tokens.
    ''',
    isNumeric: true,
  );

  static final kJump = UnitKeyword._(
    id: 'jump',
    displayName: 'Jump X',
    description: r'''
      A unit has the **JUMP X** keyword can perform the **JUMP X** card action.
      To perform this action, the unit performs a move as normal. However, the
      unit can pass over or end its movement on top of terrain that is height
      X or lower, measured from the unit's starting position.

      * While performing a move with the **JUMP X** action, a unit ignores the
        effects of difficult terrain.

      * The **JUMP X** ability also allows a unit to ignore ground vehicles with
        height equal to or lower than X while performing a move with the
        **JUMP X** action. When doing so, the unit cannot end its move
        overlapping the base of a ground vehicle and must fully move past the
        base of any ground vehicle.
    ''',
    isNumeric: true,
  );

  static final kLeader = UnitKeyword._(
    id: 'leader',
    displayName: 'leader',
    description: r'''
      This mini is your unit leader.
    ''',
  );

  static final kLightTransport1Open = UnitKeyword._(
    id: 'light-transport-1-open',
    displayName: 'Light Transport 1: Open',
    description: r'''
      You may freely transport 1 friendly trooper miniatures. After defending, if you
      suffered 1 or more wounds, each unit you are transporting suffers 1 wound.
    ''',
  );

  static final kLowProfile = UnitKeyword._(
    id: 'low-profile',
    displayName: 'Low Profile',
    description: r'''
      While defending against an attack, if a unit with the **LOW PRORFILE**
      keyword has light cover, it improves its cover by 1.
    ''',
  );

  static final kMasterOfTheForce = UnitKeyword._(
    id: 'master-of-the-force',
    displayName: 'Master of the Force',
    description: r'''
      At the end of its activation, a unit that has the
      **MASTER OF THE FORCE X** keyword may ready up to X of its exhausted Force
      upgrade cards.
    ''',
    isNumeric: true,
  );

  static final kNimble = UnitKeyword._(
    id: 'nimble',
    displayName: 'Nimble',
    description: r'''
      After a unit that has the **NIMBLE** keyword defends against an attack, if it
      spent at least one dodge token, it gains one dodge token.
    ''',
  );

  static final kPlodding = UnitKeyword._(
    id: 'plodding',
    displayName: 'Plodding',
    description: r'''
      After a unit with the **PLODDING** keyword performs a standard move during
      its activation, it cannot perform any additonal standard moves during that
      same activation.
    ''',
  );

  static final kPrecise = UnitKeyword._(
    id: 'precise',
    displayName: 'Precise X',
    description: r'''
      The **PRECISE X** keyword allows a unit to reroll additional dice when it
      spends an aim token.

      * During the "Reroll Attack Dice" step of an attack, when a unit that has
        the **PRECISE X** keyword spends an aim token, that unit can reroll up
        to X additonal attack dice.
    ''',
    isNumeric: true,
  );

  static final kPullingTheStrings = UnitKeyword._(
    id: 'pulling-the-strings',
    displayName: 'Pulling the Strings',
    description: r'''
      A unit with the **PUILLING THE STRINGS** keyword exerts tremendous
      influence over the other units around them. **PULLING THE STRINGS**
      is a card ability that can be used by spending an action during that
      unit's activation. When a unit using the **PULLING THE STRINGS** ability,
      choose another friendly trooper unit at range 1 - 2. The chosen unit may
      perform a free attack action or free move action.
    ''',
  );

  static final kQuickThinking = UnitKeyword._(
    id: 'quick-thinking',
    displayName: 'Quick Thinking',
    description: r'''
      (Gain 1 aim token and 1 dodge token)
    ''',
  );

  static final kReady = UnitKeyword._(
    id: 'ready',
    displayName: 'Ready',
    description: r'''
      After a unit with the **READY X** keyword performs a standby action, that
      unit gains X aim tokens.

      * This effect is different than performing an aim action, and therefore
        does not trigger abilities that occur after aim actions are performed.
    ''',
    isNumeric: true,
  );

  static final kRecharge = UnitKeyword._(
    id: 'recharge',
    displayName: 'recharge',
    description: r'''
      When you recover, flip X inactive shield tokens.
    ''',
    isNumeric: true,
  );

  static final kRegenerate = UnitKeyword._(
    id: 'regenerate',
    displayName: 'Regenerate',
    description: r'''
      At the end of your activation, roll 1 whitre defense dice for each wound
      token you have up to 3. For reach [BLOCK] or [SURGE], remove 1 wound
      token.
    ''',
    isNumeric: true,
  );

  static final kRelentless = UnitKeyword._(
    id: 'relentless',
    displayName: 'Relentless',
    description: r'''
      After a unit that has **RELENTLESS* keyword performs a move action, it may
      perform a free attack action.
    ''',
  );

  static final kReposition = UnitKeyword._(
    id: 'reposition',
    displayName: 'Reposition',
    description: r'''
      When a unit with the **REPOSITION** keyword performs a standard move, it
      may either perform a free pivot action before performing that standard
      move or perform a free pivot action after performing that standard move.

      * A unit using the **REPOSITION** keyword cannot perform both a free pivot
        action before performing a standard move and a free pivot action after
        performing the same standard move.

      * A pivot performed with the **REPOSITION** keyword is a move.
    ''',
  );

  static final kScout = UnitKeyword._(
    id: 'scout',
    displayName: 'Scout X',
    description: r'''
      After a unit with the **SCOUT X** keyword deploys, it may perform a
      standard move, up to speed X.

      * This move may be a full or partial move.
   
      * A unit can perform this move regardless of its maximum speed. A unit
        that has the **SCOUT X** keyword and a maximum speed of 0 can still
        perform a speed-x move when it deploys.

      * The **SCOUT X** keyword is cumulative. Thus, if a unit with
        **SCOUT 2** gains **SCOUT 1**, it would have **SCOUT 3**. The "x" value
        of the **SCOUT X** keyword cannot exceed "3".

      * A unit with the **STATIONARY** keyword cannot perform standard moves
        even if it has the **SCOUT X** keyword.

      * The effects of difficult terrain are ignored during this move.

      * A move performed with the **SCOUT X** keyword is a move, but is not a
        move action.

      * The **SCOUT X** keyword is only used after a unit is deployed. If a unit
        is placed on the battlefield by a game effect, such as the Rapid
        Reinforcements condition card, the **SCOUT X** keyword does not apply.
    ''',
    isNumeric: true,
  );

  static final kSentinel = UnitKeyword._(
    id: 'sentinel',
    displayName: 'Sentinel',
    description: r'''
      A unit with the **SENTINEL** keyword can spend a standby token after an
      enemy unit attacks, moves, or performs an action and is at range 1 - 3,
      rather than at range 1 - 2.
    ''',
  );

  static final kSharpshooter = UnitKeyword._(
    id: 'sharpshooter',
    displayName: 'Sharpshooter',
    description: r'''
      During the "Apply Dodge and Cover" step of an attack, a unit with the
      **SHARPSHOOTER X** keyword subtracts X from the defender's cover.
    ''',
    isNumeric: true,
  );

  static final kShielded = UnitKeyword._(
    id: 'shielded',
    displayName: 'shielded',
    description: r'''
      You have X shield tokens.
    ''',
    isNumeric: true,
  );

  static final kSpeeder = UnitKeyword._(
    id: 'speeder',
    displayName: 'Speeder',
    description: r'''
      The **SPEEDER X** keyword indicates that a vehicle is constantly in
      motion, as represented by compulsory moves, while also indicating the
      height of terrain can freely move over.
    ''',
    isNumeric: true,
  );

  static final kSpotter = UnitKeyword._(
    id: 'spotter',
    displayName: 'Spotter',
    description: r'''
      As a card action, a unit with the **SPOTTER X** keyword can choose up to X
      friendly units at range 1. Each cohsen unit gains one aim token.

      * This effect is different than performing an aim action, and therefore
        does not trigger abilities that occur after aim actions are performed.

      * A unit using the **SPOTTER X** keyword may choose itself as one of the
        friendly units.
    ''',
    isNumeric: true,
  );

  static final kStationary = UnitKeyword._(
    id: 'stationary',
    displayName: 'Stationary',
    description: r'''
      A unit with the **STATIONARY** keyword cannot perform moves or have moves
      performed with it through other game effects, either during its activation
      or outside of its normal activation, unless the move is a pivot.

      * When a unit with the **STATIONARY** keyword activates, after its Rally
        step, if it is panicked, it does not perform any actions, then it ends
        its activation.
    ''',
  );

  static final kSteady = UnitKeyword._(
    id: 'steady',
    displayName: 'Steady',
    description: r'''
      After a unit that has the **STEADY** keyword performs a move action, it
      may perform a free ranged attack action.
    ''',
  );

  static final kTactical = UnitKeyword._(
    id: 'tactical',
    displayName: 'Tactcal X',
    description: r'''
      After you perform a standard move, gain 1 aim token.
    ''',
    isNumeric: true,
  );

  static final kTakeCover = UnitKeyword._(
    id: 'take-cover',
    displayName: 'Take Cover X',
    description: r'''
      As a card action, a unit with the **TAKE COVER X** keyword can choose up
      to X friendly units at range 1. Each chosen unit gains one dodge token.

      * A unit using the **TAKE COVER X** keyword may choose itself as one of
        the friendly units.
    ''',
    isNumeric: true,
  );

  static final kTeamwork = UnitKeyword._(
    id: 'teamwork',
    displayName: 'Teamwork',
    description: r'''
      The **TEAMWORK** keyword indicates that a unit often teams up with another
      specific unit. The **TEAMWORK** keyword specifically states the name of
      this other unit. When a unit with the **TEAMWORK** keyword is at range
      1 - 2 of a unit that has the name specified by the **TEAMWORK** keyword,
      if either unit gains an aim token or dodge token, the other unit gains a
      token of the same type.
    ''',
  );

  static final kTransportOpen = UnitKeyword._(
    id: 'transport-open',
    displayName: 'Transport (Open)',
    description: r'''
      You may freely transport X friendly trooper units. After defending, if you
      suffered 1 or more wounds, each unit you are transporting suffers 1 wound.
    ''',
    isNumeric: true,
  );

  static final kUncannyLuck = UnitKeyword._(
    id: 'uncanny-luck',
    displayName: 'Uncanny Luck',
    description: r'''
      While a unit with the **UNCANNY LUCK X** keyword is defending, it may
      reroll up to X of its defense dice during that attack.
    ''',
    isNumeric: true,
  );

  static final kUnhindered = UnitKeyword._(
    id: 'unhindered',
    displayName: 'Unhindered',
    description: r'''
      A unit that has the **UNHINDERED** keyword is not slowed by difficult
      terrain. When a unit that has the **UNHINDERED** keyword performs a
      move, it does not reduce its speed for moving out of, into, or through
      difficult terrain.
    ''',
  );

  static final kWeakPointRear = UnitKeyword._(
    id: 'weak-point-rear',
    displayName: 'Weak Point X: Rear',
    description: r'''
      While a unit with the **WEAK POINT X: REAR** keyword is defending, if the
      attacker's unit leader is inside the rear firing arc of the defender, the
      attack pool gains **IMPACT X** equal to the value of X.
    ''',
  );

  static final kWeakPointSides = UnitKeyword._(
    id: 'weak-point-sides',
    displayName: 'Weak Point X: Sides',
    description: r'''
      While a unit with the **WEAK POINT X: SIDES** keyword is defending, if the
      attacker's unit leader is inside either of your side arcs, the attack pool
      gains **IMPACT X** equal to the value of X.
    ''',
  );

  UnitKeyword._({
    @required String id,
    @required String displayName,
    @required String description,
    bool isNumeric = false,
  }) : super(
          id: id,
          displayName: displayName,
          description: description,
          isNumeric: isNumeric,
        );

  @override
  toString() => 'UnitKeyword: $id';
}

class WeaponKeyword extends Keyword<WeaponKeyword> {
  static final Serializer<WeaponKeyword> serializer = IndexableSerializer(
    _index,
    wireName: 'weaponKeyword',
    types: const [WeaponKeyword],
  );

  static final values = BuiltSet.of(_$weaponKeywordValues);

  static final _index = BuiltMap.of(
    Map.fromEntries(
      values.map((e) => MapEntry(e.id, e)),
    ),
  );

  static final kArm = WeaponKeyword._(
    id: 'arm',
    displayName: 'Arm X: Charge Type',
    description: r'''
      A unit that is equipped with a card that has the **ARM X: CHARGE TYPE**
      keyword can perform the arm X action. To perform this action, the unit
      places X charge tokens of the specified type within range 1 and in line
      of sight of its unit leader.

      * Charge tokens cannot overlap any objective, condition, or other charge
        tokens, and must be placed on a flat surface, completely flush with that
        surface.

      * When placing charge tokens, the blue player should place their charge
        token with the blue side faceup, and the red player should place their
        charge tokens with the red side faceup.
    ''',
    isNumeric: true,
  );

  static final kBlast = WeaponKeyword._(
    id: 'blast',
    displayName: 'Blast',
    description: r'''
      An attack pool that includes a weapon that has the **BLAST** keyword
      ignores the effects of cover.

      * During the "Apply Doge and Cover" setp of an attack, the defender cannot
        use light or heavy cover to cancel hit results produced by an attack
        pool that contains a die that was contributed by a weapon that has the
        **BLAST** keyword.
    ''',
  );

  static final kCumbersome = WeaponKeyword._(
    id: 'cumbersome',
    displayName: 'Cumbersome',
    description: r'''
      A unit that has a weapon with the **CUMBERSOME** keyword cannot both move
      and attack using that weapon during the same activation, unless the move
      is a pivot.

      * If a unit performs an attack with a weapon that has the **CUMBERSOME**
        keyword during its activation, it cannot perform any moves during that
        activation, except for pivots

      * If a unit performs a move, except for a pivot, during its activation, it
        cannot perform an attack with a weapon that has the **CUMBERSOME**
        keyword during that activation.

      * A unit can use a weapon with the **CUMBERSOME** keyword during an attack
        triggered by spending a standby token, even if that unit moved during
        its activation earlier in the same round.
    ''',
  );

  static final kDetonate = WeaponKeyword._(
    id: 'detonate',
    displayName: 'Detonate X: Charge Type',
    description: r'''
      After a unit controlled by any player performs an action, each unit that
      has a weapon with the **DETONATE X: CHARGE TYPE** keyword may detonate x
      friendly charge tokens of the specifie type.

      * Any unit keywords of the unit that detonates the charge token do not
        apply to any attacks made when the charge token detonates.

      * When a charge token detonates, the unit that detonates the token cannot
        spend aim tokens to reroll attack dice.

      * When a charge token detonates, the unit that detonates the token cannot
        add any other weapons to any of the attack pools.

      * When a charge token detonates, do not refer to the surge conversion
        chart of the unit that detonated the token. Each charge type has its own
        surge conversion chart on the same card as the attack profile associated
        with that charge type.

      * After a unit performs an action, a charge token can be detonated before
        any other abilities or effects that occur after a unit performs an
        action; with the exception of spending a standby token which can be
        spent by a unit before the token detonates.

      * If, after a unit performs an action, both players have units with the
        **DETONATE X: CHARGE TYPE** keyword that could detonate charge tokens,
        the player that does not control the unit that just performed an action
        may use their unit’s **DETONATE X: CHARGE TYPE** keyword first.
    ''',
    isNumeric: true,
  );

  static final kFixedFront = WeaponKeyword._(
    id: 'fixed',
    displayName: 'Fixed: Front',
    description: r'''
      To add a weapon that has the **FIXED: FRONT** keyword to the attack pool,
      the defender’s unit must be inside the front firing arc of the attacking
      miniature.

      * If any part of the mini's base is inside a firing arc, that mini's unit
        is inside that firing arc.

      * If the attacker compromises multiple minis, a mini in the attacker
        cannot contribute its fixed weapon to the attack pool unless at least
        one of the defender is in it's firing arc.
    ''',
  );

  static final kFixedRear = WeaponKeyword._(
    id: 'rear',
    displayName: 'Fixed: Rear',
    description: r'''
      To add a weapon that has the **FIXED: REAR** keyword to the attack pool,
      the defender’s unit must be inside the rear firing arc of the attacking
      miniature.

      * If any part of the mini's base is inside a firing arc, that mini's unit
        is inside that firing arc.

      * If the attacker compromises multiple minis, a mini in the attacker
        cannot contribute its fixed weapon to the attack pool unless at least
        one of the defender is in it's firing arc.
    ''',
  );

  static final kHighVelocity = WeaponKeyword._(
    id: 'high-velocity',
    displayName: 'High Velocity',
    description: r'''
      During an attack that includes a weapon with the **HIGH VELOCITY**
      keyword, if the only weapons in the attack pool are weapons with the
      **HIGH VELOCITY** keyword, the defender cannot spend dodge tokens during
      the "Apply Dodge and Cover" step.

      * If the attacking unit has formed multiple attack pools for different
        defenders, the **HIGH VELOCITY** keyword only applies to the attack pool
        that the weapon with the keyword was added to, and only if all weapons
        in that attack pool have the **HIGH VELOCITY** keyword.

      * A defending unit that cannot spendge doge tokens use the **DEFLECT**
        ability.
    ''',
  );

  static final kImpact = WeaponKeyword._(
    id: 'impact',
    displayName: 'Impact X',
    description: r'''
      During the "Modify Attack Dice" step of an attack, if the defender has the
      **ARMOR** keyword, a unit whose attack pool includes a weapon that has the
      **IMPACT X** keyword can modify the results of the attack rol by changing
      hit results to critical results. The unit can change a number of hit
      results to critical results up to the value of X.

      * If the attacker is performing an attack against multiple targets, the
        attacker can modify only dice in the attack pool that the weapon with
        the **IMPACT X** keyword contributed to.

      * If a unit performs an attack using multiple weapons that have the
        **IMPACT X** keyword and those weapons contribute dice to the same
        attack pool, the x values of each **IMPACT X** keyword are cumulative.
    ''',
    isNumeric: true,
  );

  static final kImmuneDeflect = WeaponKeyword._(
    id: 'immune-deflect',
    displayName: 'Immune: Deflect',
    description: r'''
      During an attack with an attack pool that includes a weapon with the
      **IMMUNE: DEFLECT** keywrod, the defender cannot use the **DEFLECT**
      ability.
    ''',
  );

  static final kIon = WeaponKeyword._(
    id: 'ion',
    displayName: 'Ion X',
    description: r'''
      The **ION X** keyword is used to force enemy units to gain ion tokens.

      * A vehicle that suffers wounds after defending against an attack that
        includes a weapon that has the **ION X** keyword gains x ion tokens.
    ''',
    isNumeric: true,
  );

  static final kPierce = WeaponKeyword._(
    id: 'pierce',
    displayName: 'Pierce X',
    description: r'''
      During the "Modify Defense Dice" step of an attack, a unit whose attack
      pool includes a weapon that has the **PIERCE X** keyword can cancel up to
      X block results.

      * The **PIERCE X** keyword can be used to cancel block results on defense
        dice rolled by a unit using the **GUARDIAN X** keyword. When doing so,
        treat cancelled block results as blank results. After using **PIERCE X**
        in this way, any unused **PIERCE X** value can still be used to cancel
        block results rolled by the defender.
    ''',
    isNumeric: true,
  );

  static final kSpray = WeaponKeyword._(
    id: 'spray',
    displayName: 'Spray',
    description: r'''
      A weapon that has the **SPRAY** keyword is effective against units that
      compromise multiple miniatures. When a mini adds a weapon that has the
      **SPRAY** keyword to the attack pool, that weapon contributes its dice a
      number of times equal to the number of minis in the defender that are in
      line of sight of the mini using that weapon.
    ''',
  );

  static final kSuppressive = WeaponKeyword._(
    id: 'suppressive',
    displayName: 'Suppressive',
    description: r'''
      After defending against an attack that includes a weapon with the
      **SUPPRESSIVE** keyword, the defender gains one suppression token.

      * The suppression token gained by **SUPPRESSIVE** is in addition to any
        other suppression tokens the defender gains from the attack.

      * The effect of **SUPPRESSIVE** is only applied to an attack pool that
        includes a weapon with the **SUPPRESSIVE** keyword. Thus, only the
        defender that the weapon was used against gains a suppression token.

      * **SUPPRESSIVE** is not cumulative; if multiple weapons with the
        suppressive keyword are included in the same attack pool, the defender
        still only gains one suppression token.
    ''',
  );

  static final kTowCable = WeaponKeyword._(
    id: 'tow-cable',
    displayName: 'Tow Cable',
    description: r'''
      After a vehicle is wounded by an attack that included a weapon with the
      **TOW CABLE** keyword, the player who performed the attack performs a
      pivot with the vehicle that was wounded.
    ''',
  );

  WeaponKeyword._({
    @required String id,
    @required String displayName,
    @required String description,
    bool isNumeric = false,
  }) : super(
          id: id,
          displayName: displayName,
          description: description,
          isNumeric: isNumeric,
        );

  @override
  toString() => 'WeaponKeyword: $id';
}

class UpgradeKeyword extends Keyword<UpgradeKeyword> {
  static final Serializer<UpgradeKeyword> serializer = IndexableSerializer(
    _index,
    wireName: 'upgradeKeyword',
    types: const [UpgradeKeyword],
  );

  static final values = BuiltSet.of(_$upgradeKeywordValues);

  static final _index = BuiltMap.of(
    Map.fromEntries(
      values.map((e) => MapEntry(e.id, e)),
    ),
  );

  static final kLeader = UpgradeKeyword._(
    id: 'leader',
    displayName: 'Leader',
    description: r'''
      If an upgrade that adds a miniature to a unit has the **LEADER** keyword,
      treat the mini added by that upgrade as that unit's unit leader.
    ''',
  );

  static final kNonCombatant = UpgradeKeyword._(
    id: 'noncombatant',
    displayName: 'Noncombatant',
    description: r'''
      If an upgrade that adds a miniature to a unit has the **NONCOMBATANT**
      keyword, the mini added by the upgrade cannot use any weapons and wounds
      must be assigned to the other non-unit leader minis.
    ''',
  );

  static final kReconfigure = UpgradeKeyword._(
    id: 'reconfigure',
    displayName: 'Reconfigure',
    description: r'''
      When you recover, you may flip this card.
    ''',
  );

  static final kRepair = UpgradeKeyword._(
    id: 'repair',
    displayName: 'Repair X: Capacity Y',
    description: r'''
      **REPAIR X: CAPACITY** is a free card ability and can be used as a free
      action during a unit's activation. When a unit uses the
      **REPAIR X: CAPCITY Y** ability, place one wound token on the card that
      has **REPAIR X: CAPACITY Y** keyword, then choose a friendly ground
      vehicle at range 1 and in line of sight and remove a total of up to X
      wound tokens, ion tokens, and/or vehicle damage tokens from that unit.
      This ability cannot be used if the card has the **REPAIR X: CAPACITY Y**
      keyword has a number of wound tokens on it equal to or exceeding Y.

      * Wound tokens on cards are not considered to be on units and do not count
        toward a unit's wound threshold, nor can they be removed by abilities
        that remove wound tokens from units.

      * Vehicle damage tokens include the damaged token, the disabled token, and
        the weapon destroyed token.
    ''',
    isNumeric: true,
  );

  static final kSidearmMelee = UpgradeKeyword._(
    id: 'sidearm-melee',
    displayName: 'Sidearm: Melee',
    description: r'''
      If an upgrade that adds a miniature to a unit has the **SIDEARM: MELEE**
      keyword, the mini added the upgrade cannot use any weapons during a melee
      attack, respectively, other than the weapon on the upgrade card that
      added that mini.
    ''',
  );

  static final kSidearmRanged = UpgradeKeyword._(
    id: 'sidearm-ranged',
    displayName: 'Sidearm: Ranged',
    description: r'''
      If an upgrade that adds a miniature to a unit has the **SIDEARM: RANGED**
      keyword, the mini added the upgrade cannot use any weapons during a ranged
      attack, respectively, other than the weapon on the upgrade card that
      added that mini.
    ''',
  );

  static final kTreat = UpgradeKeyword._(
    id: 'treat',
    displayName: 'Treat X: Capacity Y',
    description: r'''
      **TREAT X: CAPACITY** is a free card ability and can be used as a free
      action during a unit's activation. When a unit uses the
      **TRERAT X: CAPCITY Y** ability, place one wound token on the card that
      has **TREAT X: CAPACITY Y** keyword, then choose a friendly
      non-emplacement trooper at range 1 and in line of sight and remove a total
      of up to X wound tokens from that unit or restore up to X miniatures to
      that unit. This ability cannot be used if the card has the
      **TREAT X: CAPACITY Y** keyword has a number of wound tokens on it equal
      to or exceeding Y.

      * Wound tokens on cards are not considered to be on units and do not count
        toward a unit's wound threshold, nor can they be removed by abilities
        that remove wound tokens from units.

      * To restore a mini to a unit, that unit must have had one or more more
        minis defeated that round. Choose a mini that was defeated during the
        current round and place that mini on the battlefield in cohesion with
        its unit leader. Then give that mini a number of wound tokens equal to
        one less than the wound threshold indicated on its unit card.

      * If all of a unit's minis have been defeated, it is no longer in play,
        and cannot be chosen when using the **TREAT X: CAPACITY Y** ability.
    ''',
    isNumeric: true,
  );

  UpgradeKeyword._({
    @required String id,
    @required String displayName,
    @required String description,
    bool isNumeric = false,
  }) : super(
          id: id,
          displayName: displayName,
          description: description,
          isNumeric: isNumeric,
        );

  @override
  toRef() => Reference(id);

  @override
  toString() => 'WeaponKeyword: $id';
}
