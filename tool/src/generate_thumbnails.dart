import 'dart:async';

import 'package:build/build.dart';
import 'package:image/image.dart';
import 'package:path/path.dart' as p;

Builder generateThumbnails(BuilderOptions _) => _GenerateThumbnails();

class _GenerateThumbnails extends Builder {
  @override
  Future<void> build(BuildStep buildStep) async {
    final bytes = await buildStep.readAsBytes(buildStep.inputId);
    final path = buildStep.inputId.path;
    final image = decodePng(bytes);
    return buildStep.writeAsBytes(
      buildStep.inputId.changeExtension('.thumb.png'),
      encodePng(_cropImage(image, path)),
    );
  }

  static final _commands = p.join(
    'lib',
    'assets',
    'cards',
    'commands',
  );

  static final _units = p.join(
    'lib',
    'assets',
    'cards',
    'units',
  );

  static final _upgrades = p.join(
    'lib',
    'assets',
    'cards',
    'upgrades',
  );

  static Image _cropImage(Image input, String path) {
    if (path.startsWith(_commands)) {
      //  25 x  50
      // 250 x 250
      return copyCrop(input, 25, 50, 250, 250);
    }
    if (path.startsWith(_units)) {
      // 270 x   0
      //  94 x  50
      return copyCrop(input, 270, 0, 94, 50);
    }
    if (path.startsWith(_upgrades)) {
      //   0 x  30
      // 200 x 110
      return copyCrop(input, 0, 30, 200, 110);
    }
    return input;
  }

  @override
  final buildExtensions = const {
    '.png': ['.thumb.png']
  };
}
