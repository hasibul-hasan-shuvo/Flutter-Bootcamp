import 'package:get/get.dart';

class HomeController extends GetxController {
  final RxInt _counterController = RxInt(0);
  int get counter => _counterController.value;

  void incrementCounter() {
    _counterController(counter + 1);
  }

  void decrementCounter() {
    if (counter > 0) {
      _counterController(counter - 1);
    }
  }
}
