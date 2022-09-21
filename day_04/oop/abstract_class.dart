abstract class Account {
  final AccountHolder _accountHolder = AccountHolder(
    name: "Shuvo",
    phone: "01600000000",
    address: "Azimpur",
  );

  void _validateAccountHolder() {
    print("Validating account holder: ${_accountHolder.name}");
  }

  void deposit(double balance) {
    _validateAccountHolder();
  }

  void withdraw();
}

class SavingsAccount extends Account {
  double _balance = 500;

  @override
  void deposit(double balance) {
    super.deposit(balance);
    _balance += balance;
  }

  double getBalance() {
    return _balance;
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

  savingsAccount.deposit(500);

  print("Your balance is: ${savingsAccount.getBalance()}");
}
