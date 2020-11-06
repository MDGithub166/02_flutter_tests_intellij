import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_reversi/core/app_widget_keys.dart';
import 'package:test/test.dart';
/*
POSSIBLE ERROR SOURCE:
*********************************************
*********************************************
*          POSSIBLE ERROR - 'dart:ui'       *
* *******************************************
*             FLUTTER LIBRARIES             *
*              ARE NOT ALLOWED              *
*       IN ANY FLUTTER-DRIVER-TESTS!!!      *
*         "OR" IN ANY CLASSES THAT          *
* "PROVIDE"(VIA IMPORT) ELEMENTS FOR THESE  *
*          FLUTTER-DRIVER-TESTS             *
* *******************************************
* a) package:flutter/FOUNDATION - ERRO:     *
* void addListener(VoidCallback listener)   *
*                                           *
* b) package:flutter/CUPPERTINO - ERRO:     *
* import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;
*                                           *
* c) package:flutter/MATERIAL - ERRO:       *
* import 'dart:ui' show lerpDouble;         *
*                                           *
* d) package:flutter/WIDGETS - ERRO:        *
* export 'dart:ui' show hashValues, hashList;
*                                           *
* e) package:flutter/ETC...                 *
* *******************************************
 */
class ViewPageTest {
  static void integrationTests() {
    var delayTest = 1;
    //
    //1) GROUP-TEST
    group('Integration Tests --> ', () {
      //
      //2) FLUTTER-DRIVER INSTANCE
      FlutterDriver driver;

      //2.A) CONNECTING FLUTTER-DRIVER INSTANVE
      setUpAll(() async {
        driver = await FlutterDriver.connect();
        print("Starting tests");
      });

      //2.B) CLOSING FLUTTER-DRIVER INSTANCE
      tearDownAll(() {
        if (driver != null) driver.close();
        print("Test well done!");
      });

      //2.C) SIMPLIFY GETTING KEYS
      SerializableFinder _find({String key}) {
        return find.byValueKey(key);
      }

      //3 GETTING ELEMENTS BY KEY (USE 'VALUE_KEY')
      var _textField = _find(key: K01);
      // var _textField =  K01;
      var _resultLabel = _find(key:K02);
      var _button = _find(key:K03);

      test('Test 01 - Reversing the string', () async {
        await driver.clearTimeline();

        //4) FULLFILL FIELDS + PAUSE TO DISPLAY THE CONTENT
        await driver
            .tap(_textField)
            .then((value) => Future.delayed(Duration(seconds: delayTest)))
            .then((value) => driver.enterText("Hello222"))
            .then((value) => Future.delayed(Duration(seconds: delayTest)));

        //5) NO-DISPLAY YET
        await driver.waitForAbsent(_resultLabel);

        //6) TAP-ACTION + RESULT
        await driver
            .tap(_button)
            .then((value) => Future.delayed(Duration(seconds: delayTest)))
            .then((value) => driver.waitFor(_resultLabel));

        //7) LAST: Wait till "NO MORE" calls
        await driver.waitUntilNoTransientCallbacks();

        //8) FINAL CHECKING
        assert(_resultLabel != null);
        expect(await driver.getText(_resultLabel), "222olleH");

        await driver.clearTimeline();
      });
    });
  }
}
