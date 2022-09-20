void main() {
  int sumOfTwoNumbers = add(5, 6);

  print("The sum of tow numbers =  $sumOfTwoNumbers");

  int sumOfThreeNumbers = add(5, 6, 3);

  print("The sum of three numbers =  $sumOfThreeNumbers");
}

int add(int firstNumber, int secondNumber, [int? thirdNumber]) {
  if (thirdNumber != null) {
    return firstNumber + secondNumber + thirdNumber;
  } else {
    return firstNumber + secondNumber;
  }
}

int add(int firstNumber, int secondNumber, [int thirdNumber = 0]) {
  return firstNumber + secondNumber + thirdNumber;
}
