import 'dart:io';

void main() {
  print("Please enter a number: ");
  String? data = stdin.readLineSync();

  int number = int.parse(data ?? '0');

  if (number % 2 == 0) {
    print("You won!");
  }
}
