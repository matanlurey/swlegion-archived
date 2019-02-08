import 'package:swlegion/swlegion.dart';

final imperialCommsTechnician = Upgrade(
  id: 'imperial-comms-technician',
  name: 'Imperial Comms Technician',
  type: UpgradeSlot.personnel,
  addsMiniature: true,
  restrictedToFaction: Faction.imperials,
  points: 10,
  addsUpgradeSlots: {
    UpgradeSlot.comms: 1,
  },
  text: r'''
    Adds a 1 Imperial comms technician mini.
    You gain a comms upgrade icon.
    You must equip a comms upgrade card.
  ''',
  waves: const [
    Wave.wImperialSpecialistsPersonnelExpansion,
  ],
);
