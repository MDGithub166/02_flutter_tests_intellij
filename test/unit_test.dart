import 'package:flutter_reversi/pages_modules/service/service.dart';
import 'package:flutter_test/flutter_test.dart';

// void main() {
class UnitTest {
  static void unitTests() {
    // 1) Instanciate the class to be tested
    Service _service;

    setUp(() {
      _service = Service();
    });

    // 1.a) Define the Test Group
    group('Group CI-CD-01: Service Business Rules', () {
      // 2) Testing the Service Instantiation
      test('Testing the Service Instantion', () {
        expect(_service, isInstanceOf<Service>());
      });

      // 3) Testing the method's class
      test('Test 01.a) Reverser Service Test', () {
        String initial = "Hello";
        String actual = _service.reverser(initial);
        String matcher = "olleH";
        expect(actual, matcher);
      });
    });
  }
}
