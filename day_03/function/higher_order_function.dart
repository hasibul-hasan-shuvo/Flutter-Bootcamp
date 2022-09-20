void main() {
  add(
    5,
    6,
    (int sum) => print("The sum: $sum"), // This is called anonymous function.
  );
}

void doPrint(int sum) {
  print("The sum: $sum");
}

void add(int firstNumber, int secondNumber, Function(int) task) {
  int sum = firstNumber + secondNumber;
  task(sum);
}
