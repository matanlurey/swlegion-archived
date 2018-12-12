import 'package:build_verify/build_verify.dart';
import 'package:test/test.dart';

/// Verifies that all generated files on disk are up-to-date.
void main() {
  test('generated files should be up to date', expectBuildClean);
}
