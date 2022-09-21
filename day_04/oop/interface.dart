abstract class Account {
  double getBalance();

  void deposit(double balance);
  void withdraw();
}

class SavingsAccount implements Account {
  double _balance = 500;

  @override
  double getBalance() {
    return _balance;
  }

  @override
  void deposit(double balance) {
    _balance += balance;
  }

  @override
  void withdraw() {
    // TODO: implement withdraw
  }
}

class AccountHolder {
  final String name;
  final String phone;
  final String address;

  AccountHolder({
    required this.name,
    required this.phone,
    required this.address,
  });
}

void main() {
  SavingsAccount savingsAccount = SavingsAccount();

  savingsAccount.deposit(700);

  print("Your Savings Account Balance: ${savingsAccount.getBalance()}");
}
