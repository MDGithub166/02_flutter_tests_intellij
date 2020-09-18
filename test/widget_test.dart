import 'package:flutter/material.dart';
import 'package:flutter_reversi/app_driver.dart';
import 'package:flutter_test/flutter_test.dart';

// WIDGET TEST: is an UNIT-TEST-WIDGET, meaning it is a Unit Test for Widgets
void main() {
  testWidgets('Widget Testing', (WidgetTester tester) async {
    //
    // 1) Select the WIDGET to test
    await tester.pumpWidget(AppDriver());

    // 2) find the ITEM to test + CONFIRMA
    var _textField = find.byKey(Key("input"));
    expect(_textField, findsOneWidget);

    // 3) entra o TEXTO p/ TEST + CONFIRMA
    await tester
        .enterText(_textField, 'Ab')
        .then((value) => expect(find.text('Ab'), findsOneWidget));

    // 4) ACIONA BUTTON
    // 4.a) Find BUTTON(via label) + CONFIRMA
    var button = find.byKey(Key('button'));
    expect(button, findsOneWidget);

    // 4.b) Tap Button + ReBuild 1 frame(Pump) + Check Result
    tester
        .tap(button)
        .then((value) => tester.pump())
        .then((value) => expect(find.text('bA'), findsOneWidget));
  });
}
