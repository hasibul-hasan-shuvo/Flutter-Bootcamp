void main() {
  int sumOfTwoNumbers = add(
    secondNumber: 6,
    firstNumber: 5,
  );

  print("The sum of tow numbers =  $sumOfTwoNumbers");

  // int sumOfThreeNumbers = add(
  //   firstNumber: 5,
  //   secondNumber: 6,
  //   thirdNumber: 3,
  // );
  //
  // print("The sum of three numbers =  $sumOfThreeNumbers");
}

int add({
  required int firstNumber,
  required int secondNumber,
}) {
  return firstNumber + secondNumber;
}

// int add({
//   required int firstNumber,
//   required int secondNumber,
//   int thirdNumber = 0,
// }) {
//   return firstNumber + secondNumber + thirdNumber;
// }
