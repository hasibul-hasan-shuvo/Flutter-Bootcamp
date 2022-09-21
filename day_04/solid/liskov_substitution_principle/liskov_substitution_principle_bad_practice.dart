abstract class Account {
  void deposit();
  void withDraw();
}

class SavingsAccount extends Account {
  @override
  void withDraw() {
    print("Withdrawing from savings account");
  }

  @override
  void deposit() {
    // TODO: implement deposit
  }
}

class StudentAccount extends Account {
  @override
  void withDraw() {
    print("Withdrawing from student account");
  }

  @override
  void deposit() {
    // TODO: implement deposit
  }
}

class DpsAccount extends Account {
  @override
  void withDraw() {
    // throw exception
    print("Throwing exception");
  }

  @override
  void deposit() {
    // TODO: implement deposit
  }
}

class WithDrawableService {
  late Account _account;

  WithDrawableService(Account account) {
    _account = account;
  }

  void withDraw() {
    _account.withDraw();
  }
}

void main() {
  Account account = DpsAccount();

  WithDrawableService withDrawableService = WithDrawableService(account);

  withDrawableService.withDraw();
}
