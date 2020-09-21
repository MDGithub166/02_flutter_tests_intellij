import 'package:flutter_reversi/pages_modules/service/i_service.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';


// 1) Creating the Mock Class
class MockService extends Mock implements IService {}

void main() {
  // 2) Create the Mock Instance
  IService _mockService;

  // 2.a) Instanciating
  setUp(() {
    _mockService = MockService();
    when(_mockService.reverser("test2")).thenReturn("test2-ok");
    when(_mockService.reverser("test3")).thenReturn("test3-ok");
  });

  // 3) Define the Test Group
  group('Group CI-CD-01: Mock Service Business Rules', () {
    // 4) Testing
    test('Test 01.a) When - Local - test 1', () {
      // 4.a) Defining the MockReturn
      when(_mockService.reverser("mockado")).thenReturn("funciona");
      String initial = "mockado";

      // 4.b) Using the MockReturn Input+Return
      String actual = _mockService.reverser(initial);
      String matcher = "funciona";
      expect(actual, matcher);
    });

    test('Test 01.b) When - SetUp - test 2', () {
      // 4.b) Using the MockReturn Input+Return
      String actual = _mockService.reverser("test2");
      String matcher = "test2-ok";
      expect(actual, matcher);
    });

    test('Test 01.c) When - SetUp - test 3', () {
      // 4.b) Using the MockReturn Input+Return
      String actual = _mockService.reverser("test3");
      String matcher = "test3-ok";
      expect(actual, matcher);
    });
  });
}
