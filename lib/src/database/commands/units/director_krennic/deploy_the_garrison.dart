import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final deployTheGarrison = CommandCard(
  id: 'deploy-the-garrison',
  name: 'Deploy The Garrison',
  activated: '2 Troopers',
  required: [Units.directorKrennic],
  pips: 2,
  text: r'''
    At the start of the Activation Phase, choose up to 2 friendly trooper
    units that have faceup order tokens. Each chosen unit may perform a free
    standby action.
  ''',
  waves: const [
    Wave.wDirectorOrsonKrennicCommanderExpansion,
  ],
);
