import 'package:flutter_reversi/main.dart' as mainApp;

// A) IMPORT: FLUTTER-DRIVER-EXTENSION
import 'package:flutter_driver/driver_extension.dart';

// B) DEPENDENCIES:
//  dev_dependencies:
//    flutter_driver:
//    sdk: flutter
//    test:

// C) CLI EXECUTION:
//    flutter drive --target=test_driver/integr_ui_view.dart

// D) IntelliJ(Debug + Hot_reload), check:
//    https://medium.com/flutter-community/hot-reload-for-flutter-integration-tests-e0478b63bd54

// E) CONCEPT UI-INTEGRATION TEST:
//    It is the actual Integration Test because integrates everything
void main() {
  enableFlutterDriverExtension();
  mainApp.main();
}
