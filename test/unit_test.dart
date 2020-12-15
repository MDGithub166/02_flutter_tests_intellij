import 'package:flutter_reversi/pages_modules/service/service.dart';
import 'package:test/test.dart';

import 'test_global.dart';

// void main() {
class UnitTest extends TestGlobal {
  static void unitTests() {
    // 1) Instanciate the class to be tested
    Service _service;

    setUp(() {
      _service = Service();
    });
    
    tearDown((){
      TestGlobal.tearDownMethod();
      print("tearDown local");
    });

    // 1.a) Define the Test Group
    group('Group CI-CD-01: Service Business Rules', () {
      // 2) Testing the Service Instantiation
      test('Testing the Service Instantion', () {
        expect(_service, isA<Service>());
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
