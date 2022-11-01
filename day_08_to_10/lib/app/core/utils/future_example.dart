import 'dart:io';

void main() {
  print("The value is: ${_getFutureValue()}");
}

// int _getFutureValue() {
//   Future.delayed(Duration(seconds: 15), () => print("This is future value"));
//   return 100;
// }

int _getFutureValue() {
  sleep(Duration(seconds: 15));
  return 100;
}

// Future<int> _getFutureValue() async {
//   return await Future.delayed(Duration(seconds: 15), () => 10);
// }
