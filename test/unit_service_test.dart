import 'package:flutter_reversi/pages_modules/service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  // 1) Instanciate the class to be tested
  Service _service = Service();

  // 2) Testing the method's class
  test('Reverser Service Test', () {
    String initial = "Hello";
    String actual = _service.reverser(initial);
    String matcher = "olleH";
    expect(actual, matcher);
  });
}
