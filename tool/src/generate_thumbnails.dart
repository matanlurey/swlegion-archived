import 'dart:async';

import 'package:build/build.dart';
import 'package:image/image.dart';
import 'package:path/path.dart' as p;

Builder generateThumbnails(BuilderOptions _) => _GenerateThumbnails();

class _GenerateThumbnails extends Builder {
  @override
  Future<void> build(BuildStep buildStep) async {
    final bytes = await buildStep.readAsBytes(buildStep.inputId);
    final image = _cropImage(
      Image.fromBytes(0, 0, bytes),
      buildStep.inputId.path,
    );
    return buildStep.writeAsBytes(
      buildStep.inputId.changeExtension('thumb.png'),
      image.getBytes(),
    );
  }

  static Image _cropImage(Image input, String path) {
    return input;
  }

  static String _fileName(String output) {
    final file = p.withoutExtension(output);
    return p.join('$file.thumb.png');
  }

  @override
  final buildExtensions = const {
    '.png': ['.thumb.png']
  };
}
