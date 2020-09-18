import 'i_service.dart';

class Service implements IService {
  Service();

  String reverser(String initial) {
    return initial.split('').reversed.join();
  }
}
