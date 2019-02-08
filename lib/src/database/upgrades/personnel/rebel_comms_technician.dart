import 'package:swlegion/swlegion.dart';

final rebelCommsTechnician = Upgrade(
  id: 'rebel-comms-technician',
  name: 'Rebel Comms Technician',
  type: UpgradeSlot.personnel,
  addsMiniature: true,
  restrictedToFaction: Faction.rebels,
  points: 9,
  addsUpgradeSlots: {
    UpgradeSlot.comms: 1,
  },
  text: r'''
    Adds a 1 Rebel comms technician mini.
    You gain a comms upgrade icon.
    You must equip a comms upgrade card.
  ''',
  waves: const [
    Wave.wRebelSpecialistsPersonnelExpansion,
  ],
);
