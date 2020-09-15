import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

//CLI RUNNING: flutter drive --target=test_driver/integration.dart
void main() {
  group('reversor app integration test', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() {
      if (driver != null) {
        driver.close();
      }
    });

    //FLUTTER DRIVER ONLY WORKS WELL WITH 'BYVALUEKEY'
    var field = find.byValueKey("input");
    var btn = find.byValueKey("button");
    var reverse = find.byValueKey("response");

    test('Reversing the string', () async {
      await driver.clearTimeline();
      await driver.tap(field);
      await Future.delayed(Duration(seconds: 2)); // only to illustrate

      await driver.enterText("Hello222");
      await Future.delayed(Duration(seconds: 2)); // only to illustrate

      await driver.waitForAbsent(reverse);
      await driver.tap(btn);
      await Future.delayed(Duration(seconds: 2)); // only to illustrate

      await driver.waitFor(reverse);
      await driver.waitUntilNoTransientCallbacks();
      assert(reverse != null);
    });
  });
}
