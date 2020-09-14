import 'package:flutter_reversi/pages_modules/service.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Reverser Service Test', (){
    String initial = "Hello";
    String actual = reverser(initial);
    String matcher = "olleH";
    expect(actual, matcher);
  });
}