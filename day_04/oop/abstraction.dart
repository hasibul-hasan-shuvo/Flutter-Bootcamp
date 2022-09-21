class Account {
  final AccountHolder _accountHolder = AccountHolder(
    name: "Shuvo",
    phone: "01600000000",
    address: "Azimpur",
  );

  double _balance = 500;

  double getBalance() {
    _validateAccountHolder();
    return _balance;
  }

  void _validateAccountHolder() {
    print("Validating account holder: ${_accountHolder.name}");
  }

  String getAccountHolderName() {
    _validateAccountHolder();
    return _accountHolder.name;
  }

  void deposit(double balance) {
    _validateAccountHolder();
    _balance += balance;
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
  Account account = Account();

  print("Your Saving Account Balance: ${account.getBalance()}");
}
