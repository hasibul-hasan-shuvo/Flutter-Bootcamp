import 'dart:io';

void main() {
  print("How many numbers do you wanna sum? =");
  String? data = stdin.readLineSync();

  int n = int.parse(data ?? "0");
  int sum = 0;

  for (int counter = 1; counter <= n && sum <= 20; counter++) {
    // if (counter == 7) {
    //   continue;
    // }
    // sum += counter;
    sum = sum + counter;
    print("Sum: $sum & Counter: $counter");
  }

  print("Sum of $n numbers: $sum");
}
