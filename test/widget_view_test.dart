import 'package:flutter/material.dart';
import 'package:flutter_reversi/app_driver.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Widget Testing', (WidgetTester tester) async {
    //
    // 1) Select the Widget/View to test
    await tester.pumpWidget(AppDriver());

    // 2) find the ITEM to test + CONFIRMA
    var _textField = find.byKey(Key("input"));
    expect(_textField, findsOneWidget);

    // 3) entra o TEXTO p/ TEST + CONFIRMA
    await tester
        .enterText(_textField, 'Hello')
        .then((value) => expect(find.text('Hello'), findsOneWidget));

    // 4) ACIONA BUTTON REVERSER
    // 4.a) Find BUTTON(via label) + CONFIRMA
    var button = find.byKey(Key('button'));
    expect(button, findsOneWidget);

    await tester
        // 4.b) TAP BUTTON
        .tap(button)
        // 4.c) ESPERA(1 frame)
        .then((value) => tester.pump())
        // 4.d) Check result
        .then((value) => expect(find.text('olleH'), findsOneWidget));
  });
}
