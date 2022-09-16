import 'dart:io';

void main() {
  print("Please enter your mark: ");
  String? data = stdin.readLineSync();

  int number = int.parse(data ?? '0');

  if (number > 100) {
    print("You are legend!");
  } else if (number <= 100 && number >= 80) {
    print("You got A+");
  } else if (number < 80 && number >= 70) {
    print("You got A");
  } else if (number < 70 && number >= 60) {
    print("You got A-");
  } else {
    print("Work hard!");
  }
}
