import 'package:flutter_driver/driver_extension.dart';
import 'package:flutter_reversi/main.dart' as mainApp;

//PUBSPEC.YML - DEPENDENCIES FORMAT
// dev_dependencies:
//  flutter_driver:
//  sdk: flutter
//  test:
//CLI RUNNING: flutter drive --target=test_driver/integration.dart
void main() {
  enableFlutterDriverExtension();
  mainApp.main();
}