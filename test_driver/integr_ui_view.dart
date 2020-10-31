//*******************************************
//***    CONCEPT UI-INTEGRATION TEST:      **
//***   It is the actual Integration Test  **
//***    because integrates everything     **
//*******************************************

//*******************************************
//***    YOUTUBE  + MEDIUM TUTORIAL        **
//*******************************************
// https://www.youtube.com/watch?v=Vfi0uyDWIuM&list=PLUiueC0kTFqLvpFk_Zg55geh_TBTKnbnA&index=3
//
// INTELLIJ INTEGRATION TESTS EXECUTION
// https://medium.com/flutter-community/hot-reload-for-flutter-integration-tests-e0478b63bd54


// A) IMPORTS
// A.1) FLUTTER-DRIVER-EXTENSION
import 'package:flutter_driver/driver_extension.dart';

// A.2) FLUTTER-REVERSI ABREVIATION(**MODULE PROJECT NAME**)
import 'package:flutter_reversi/main.dart' as mainApp;

// B) DEPENDENCIES NEEDED - PUBSPEC.JSON:
//  dev_dependencies:
//    flutter_driver:
//    sdk: flutter
//    test:

// C) MAIN-FILE TO RUN THE TEST
void main() {
  enableFlutterDriverExtension();
  mainApp.main();
}

// D) RUNNING THE TEST:
// D.1) CLI: flutter drive --target=test_driver/integr_ui_view.dart
// D.2) IntelliJ, check: https://pvba04.medium.com/flutter-integration-tests-in-intellij-idea-16736df35bc7

