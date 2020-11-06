import 'package:test/test.dart';

import 'mock_test/mock_test.dart';
import 'unit_test.dart';
import 'widget_test.dart';

void main() {
  group('03 Tests - Mock Unit Tests', MockTest.mockUnitTests);
  group('02 Tests - Unit Tests', UnitTest.unitTests);
  group('01 Test - Widget Tests', WidgetIntegrationTest.widgetIntegrationTests);
}
