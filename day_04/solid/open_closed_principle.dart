abstract class Account {
  double getBalance();

  void addMunafa();
}

class SavingsAccount extends Account {
  double _balance = 500;

  @override
  void addMunafa() {
    _balance *= 1.03;
  }

  @override
  double getBalance() {
    return _balance;
  }
}

class DpsAccount extends Account {
  double _balance = 500;

  @override
  void addMunafa() {
    _balance *= 1.09;
  }

  @override
  double getBalance() {
    return _balance;
  }
}

class StudentAccount extends Account {
  double _balance = 500;
  @override
  void addMunafa() {
    _balance *= 1.02;
  }

  @override
  double getBalance() {
    return _balance;
  }
}

class AccountMunafaAddingService {
  late Account _account;

  AccountMunafaAddingService(Account account) {
    _account = account;
  }

  void addMunafa() {
    _account.addMunafa();

    // if (_account is SavingsAccount) {
    //   // Savings account logic
    // } else if (_account is DpsAccount) {
    //   // DPS account logic
    // }
  }
}

void main() {
  Account account = StudentAccount();

  AccountMunafaAddingService munafaAddingService =
      AccountMunafaAddingService(account);

  print("Your Savings Account Balance: ${account.getBalance()}");

  munafaAddingService.addMunafa();

  print("Your Saving Account Balance: ${account.getBalance()}");
}
