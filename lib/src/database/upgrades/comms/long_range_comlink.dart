import 'package:swlegion/swlegion.dart';

final longRangeComlink = Upgrade(
  id: 'long-range-comlink',
  name: 'Long-Range Comlink',
  type: UpgradeSlot.comms,
  points: 10,
  text: r'''
    During the command phase, you may be issued orders as though you are in range of the nominated commander.
  ''',
  waves: const [
    Wave.wCore,
    Wave.w74ZSpeederBikesUnitExpansion,
    Wave.wAtRtUnitExpansion,
    Wave.wAtStUnitExpansion,
    Wave.wT47AirspeederUnitExpansion,
  ],
);
