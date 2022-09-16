import 'dart:io';

void main() {
  print("Please enter a number: ");
  String? data = stdin.readLineSync();

  int number = int.parse(data ?? '0');

  print(number % 2 == 0 && number != 0 ? "You won!" : "Better luck next time");
}
