import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'reference.dart';

part 'wave.aggregate.dart';

class Wave implements Comparable<Wave>, Indexable<Wave> {
  static final Serializer<Wave> serializer = IndexableSerializer(
    _index,
    wireName: 'wave',
    types: const [Wave],
  );

  static final values = BuiltSet.of(_$waveValues);

  static final _index = BuiltMap.of(
    Map.fromEntries(
      values.map((e) => MapEntry(e.id, e)),
    ),
  );

  /// Order of release, starting at `0`.
  final int order;

  @override
  final String id;

  const Wave._(this.order)
      : assert(order >= 0),
        id = order < 10 ? 'SWL0$order' : 'SWL$order';

  bool get isReleased => order < 29;

  @override
  compareTo(wave) => order.compareTo(wave.order);

  @override
  toRef() => Reference(id);

  @override
  toString() => 'Wave: $id';

  static const wCore = Wave._(1);
  static const wDicePack = Wave._(2);
  static const wMovementToolsAndRangeRulerPack = Wave._(3);
  static const wAtRtUnitExpansion = Wave._(4);
  static const wRebelTroopersUnitExpansion = Wave._(5);
  static const w74ZSpeederBikesUnitExpansion = Wave._(6);
  static const wStormtroopersUnitExpansion = Wave._(7);
  static const wAtStUnitExpansion = Wave._(8);
  static const wT47AirspeederUnitExpansion = Wave._(9);
  static const wGeneralVeersCommanderExpansion = Wave._(10);
  static const wSnowtroopersUnitExpansion = Wave._(11);
  static const wLeiaOrganaCommanderExpansion = Wave._(12);
  static const wFleetTroopersUnitExpansion = Wave._(13);
  static const w1dot4FDLaserCannonUnitExpansion = Wave._(14);
  static const wEWebHeavyBlasterTeamUnitExpansion = Wave._(15);
  static const wPrioritySuppliesBattlefieldExpansion = Wave._(16);
  static const wBarricadesPack = Wave._(17);
  static const wBobaFettOperativeExpansion = Wave._(18);
  static const wScoutTroopersUnitExpansion = Wave._(19);
  static const wHanSoloCommanderExpansion = Wave._(20);
  static const wRebelCommandosUnitExpansion = Wave._(21);
  static const wEmperorPalpatineCommanderExpansion = Wave._(22);
  static const wImperialRoyalGuardsUnitExpansion = Wave._(23);
  static const wChewbaccaOperativeExpansion = Wave._(24);
  static const wWookieWarriorsUnitExpansion = Wave._(25);
  static const wRebelSpecialistsPersonnelExpansion = Wave._(26);
  static const wImperialSpecialistsPersonnelExpansion = Wave._(27);
  static const wPremiumTrooperBases = Wave._(28);
  static const wPremiumLargeBases = Wave._(29);
  static const w$SWL30$Unknown = Wave._(30);
  static const wJynErsoCommanderExpansion = Wave._(31);
  static const wRebelPathfindersUnitExpansion = Wave._(32);
  static const wDirectorOrsonKrennicCommanderExpansion = Wave._(33);
  static const wImperialDeathTroopersUnitExpansion = Wave._(34);
  static const wTX225OccupierCombatAssaultTankUnitExpansion = Wave._(35);
  static const wX34LandspeederUnitExpansion = Wave._(36);
  static const wSabineWrenOperativeExpansion = Wave._(37);
  static const wBosskOperativeExpansion = Wave._(38);
}
