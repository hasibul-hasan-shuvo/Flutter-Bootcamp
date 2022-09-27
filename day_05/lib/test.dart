//Higher oder function dart

void main() {
  MyFunction(
    2,
    3,
    (int resultValue, String message) =>
        print("The sum: $resultValue, Message: $message"),
  );
}

void MyFunction(int a, int b, Function(int, String) onResult) {
  int sum = a + b;

  onResult(sum, "This event has been triggered");
}

// int addNumbers(int a, int b) {
//   return a + b;
// }

// Function MultiplyByFour(int a) {
//   Function Multiply = (a) => a * 4;
//   return Multiply();
// }
