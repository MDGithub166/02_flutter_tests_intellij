import 'package:flutter/material.dart';
import 'package:flutter_reversi/app_driver.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Functional/Widget Testing', (WidgetTester tester) async {
    // 1) Select the Widget/View to test
    await tester.pumpWidget(AppDriver());

    // 2) find the ITEM to test + confirm the 'FOUND ITEM'
    var textField = find.byType(TextField);
    expect(textField, findsOneWidget);

    // 3) entra o TEXTO p/ TEST + confirm 'ENTRADA'
    // await tester.enterText(textField, 'Hello');
    // expect(find.text('Hello'), findsOneWidget);
    await tester.enterText(textField, 'Hello').then((value) {
      expect(find.text('Hello'), findsOneWidget);
    });

    // 4) ACIONA BUTTON REVERSER
    //   a) Find BUTTON(via label) + confirma
    //   b) TAP BUTTON
    //   c) ESPERA(1 frame) + check result
    var button = find.text("Reverse");
    expect(button, findsOneWidget);
    await tester.tap(button);
    await tester.pump();
    expect(find.text('olleH'), findsOneWidget);
  });
}
