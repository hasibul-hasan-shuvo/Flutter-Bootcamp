import 'dart:io';

void main() {
  print("Enter your data:");

  String? data = stdin.readLineSync();

  int value = int.parse(data!);

  print(value == 2);
}
