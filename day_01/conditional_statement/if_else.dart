import 'dart:io';

void main() {
  print("Please enter a number: ");
  String? data = stdin.readLineSync();

  int number = int.parse(data ?? '0');

  print("Your number is $number you got this:");

  if (number % 2 == 0) {
    if (number == 4) {
      print("Partially won!");
    } else {
      print("You won");
    }
  } else {
    print("Better luck next time!");
  }
}
