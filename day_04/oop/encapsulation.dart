class Account {
  String? _holderName;
  String? _holderPhone;
  double? _balance;

  Account({
    required String holderName,
    required String holderPhone,
    required double balance,
  }) {
    _holderName = holderName;
    _holderPhone = holderPhone;
    _balance = balance;
  }

  double? getBalance() {
    return _balance;
  }

  void deposit(double newBalance) {
    if (_balance != null) {
      _balance = _balance! + newBalance;
    } else {
      _balance = newBalance;
    }
  }

  String? getHolderName() {
    return _holderName;
  }

  String? getHolderPhone() {
    return _holderPhone;
  }
}

void main() {
  Account account = Account(
    holderName: "Shuvo",
    holderPhone: "01600000000",
    balance: 500,
  );

  account.deposit(300);

  print("Your balance: ${account.getBalance()}");
}
