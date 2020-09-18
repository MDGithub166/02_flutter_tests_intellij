import 'file:///C:/Users/SERVIDOR/Projects/flutter_reversi-master/lib/pages_modules/service/service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // 1) Instanciate the class to be tested
  Service _service = Service();

  // 1.a) Define the Test Group
  group('Group CI-CD-01: Service Business Rules', () {
    // 2) Testing the method's class
    test('Test 01.a) Reverser Service Test', () {
      String initial = "Hello";
      String actual = _service.reverser(initial);
      String matcher = "olleH";
      expect(actual, matcher);
    });
  });
}
