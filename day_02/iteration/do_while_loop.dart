import 'dart:io';

void main() {
  print("Enter a numbers: ");

  int sum = 0;
  int number;

  do {
    String? data = stdin.readLineSync();
    number = int.parse(data ?? "0");
    sum += number;
  } while (number != 0);

  print("Sum: $sum");
}
