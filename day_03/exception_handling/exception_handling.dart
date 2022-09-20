import 'dart:io';

void main() {
  print("Enter your data:");

  String? data = stdin.readLineSync();

  try {
    int value = int.parse(data!);
    print(value);
  } on FormatException catch (exception) {
    print("You got format exception for wrong number");
  } catch (exception) {
    print("Please enter correct number");
  } finally {
    print("This is final block");
  }
}
