class Account {
  final AccountHolder _accountHolder = AccountHolder(
    name: "Shuvo",
    phone: "01600000000",
    address: "Azimpur",
  );

  double _balance = 500;

  double getBalance() {
    return _balance;
  }

  String getAccountHolderName() {
    return _accountHolder.name;
  }

  void deposit(double balance) {
    _balance += balance;
  }

  void addMunafa() {}
}

mixin WithDrawable {
  void withdraw();
}

class SavingsAccount extends Account with WithDrawable {
  @override
  void addMunafa() {
    _balance *= 1.03;
  }

  @override
  void withdraw() {
    print("Withdrawing...");
  }
}

class DpsAccount extends Account {
  @override
  void addMunafa() {
    _balance *= 1.09;
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

  DpsAccount dpsAccount = DpsAccount();

  print("Your DPS Account Balance: ${dpsAccount.getBalance()}");

  print("Your Savings Account Balance: ${savingsAccount.getBalance()}");

  dpsAccount.addMunafa();

  savingsAccount.withdraw();

  print("Your DPS Account Balance: ${dpsAccount.getBalance()}");

  print("Your Saving Account Balance: ${savingsAccount.getBalance()}");
}
