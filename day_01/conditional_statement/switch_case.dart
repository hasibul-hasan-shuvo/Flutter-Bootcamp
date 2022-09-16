import 'dart:io';

void main() {
  print("Years of investment: ");
  String? data = stdin.readLineSync();

  int number = int.parse(data ?? '0');

  switch (number) {
    case 1:
      print("You got 15% profit");
      break;
    case 2:
      print("You got 25% profit");
      break;
    case 3:
      print("You got 40% profit");
      break;
    default:
      print("You got 50% profit");
      break;
  }
}
