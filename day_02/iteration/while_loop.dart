import 'dart:io';

void main() {
  print("Enter a number");
  String? data = stdin.readLineSync();

  int n = int.parse(data ?? "0");

  while (n > 0) {
    print(n);
    n--;
  }
}
