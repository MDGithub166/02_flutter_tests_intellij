import 'package:test/test.dart';

//FLUTTER-DRIVER IMPORT:
import 'package:flutter_driver/flutter_driver.dart';

void main() {
  //
  //1) GROUP-TEST
  group('Group CI-CD-01: Integration UI/VIEW Test - View.Dart', () {
    //2) FLUTTER-DRIVER: Instanciate the test-driver
    FlutterDriver driver;

    //2.A) CONNECT FLUTTER-DRIVER
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    //2.B) CLOSE FLUTTER-DRIVER
    tearDownAll(() {
      if (driver != null) driver.close();
    });

    //3 FIND ELEMENTS (PRIORITIZE 'VALUE_KEY')
    var _textField = find.byValueKey("input");
    var _button = find.byValueKey("button");
    var _resultLabel = find.byValueKey("response");

    test('Reversing the string', () async {
      await driver.clearTimeline();

      //4) FULLFILL FIELDS + PAUSE TO DISPLAY
      await driver
          .tap(_textField)
          .then((value) => Future.delayed(Duration(seconds: 2)))
          .then((value) => driver.enterText("Hello222"))
          .then((value) => Future.delayed(Duration(seconds: 2)));

      //5) NO-DISPLAY YET
      await driver.waitForAbsent(_resultLabel);

      //6) TAP (_resultLabeL is FINALLY 'Displayed')
      await driver
          .tap(_button)
          .then((value) => Future.delayed(Duration(seconds: 2)))
          .then((value) => driver.waitFor(_resultLabel));

      //7) LAST: Wait till "NO MORE" calls
      await driver.waitUntilNoTransientCallbacks();

      //8) FINAL CHECKING
      assert(_resultLabel != null);
    });
  });
}
