import 'package:built_collection/built_collection.dart';

import 'src/database/units/74_z_speeder_bike.dart';
import 'src/database/units/at_rt.dart';
import 'src/database/units/darth_vader.dart';
import 'src/database/units/luke_skywalker.dart';
import 'src/database/units/rebel_troopers.dart';
import 'src/database/units/stormtroopers.dart';

import 'src/database/weapons/a_280_blaster_rifle.dart';
import 'src/database/weapons/a_300_blaster_rifle.dart';
import 'src/database/weapons/anakins_lightsaber.dart';
import 'src/database/weapons/ax_20_blaster_cannon.dart';
import 'src/database/weapons/e_11_blaster_rifle.dart';
import 'src/database/weapons/ec_17_hold_out_blaster.dart';
import 'src/database/weapons/grappling_claws.dart';
import 'src/database/weapons/lukes_dl_44_blaster_pistol.dart';
import 'src/database/weapons/unarmed.dart';
import 'src/database/weapons/vaders_lightsaber.dart';

/// All of the `Unit`s in the database.
final units = BuiltSet.of([
  $74ZSpeederBikes,
  atRt,
  darthVader,
  lukeSkywalker,
  rebelTroopers,
  stormtroopers,
]);

/// All of the `Wepaon`s in the database.
final weapons = BuiltSet.of([
  a280BlasterRifle,
  a300BlasterRifle,
  anakinsLightsaber,
  ax20BlasterCannon,
  e11BlasterRifle,
  ec17HoldOutBlaster,
  grapplingClaws,
  lukesDl44BlasterPistol,
  unarmed,
  vadersLightsaber,
]);
