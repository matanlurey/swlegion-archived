import 'package:swlegion/swlegion.dart';

import '../../units/darth_vader.dart' as units;

final newWaysToMovivateThem = CommandCard(
  id: 'new-ways-to-motivate-them',
  name: 'New Ways To Motivate Them',
  unitsActivated: '2 Troopers',
  unitsRequired: [units.darthVader],
  pips: 2,
  text: r'''
    When a friendly non-Darth Vader trooper unit with a faceup order token activates, it may suffer 1 wound to perform 1 free action.
  ''',
);
