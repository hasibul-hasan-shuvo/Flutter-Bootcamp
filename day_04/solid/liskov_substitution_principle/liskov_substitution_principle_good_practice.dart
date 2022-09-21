abstract class Account {
  void deposit();
}

abstract class WithDrawableAccount extends Account {
  void withDraw();
}

class SavingsAccount extends WithDrawableAccount {
  @override
  void withDraw() {
    print("Withdrawing from savings account");
  }

  @override
  void deposit() {
    // TODO: implement deposit
  }
}

class StudentAccount extends WithDrawableAccount {
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
  void deposit() {
    // TODO: implement deposit
  }
}

class WithDrawableService {
  late WithDrawableAccount _account;

  WithDrawableService(WithDrawableAccount account) {
    _account = account;
  }

  void withDraw() {
    _account.withDraw();
  }
}

void main() {
  WithDrawableAccount account = SavingsAccount();

  WithDrawableService withDrawableService = WithDrawableService(account);

  withDrawableService.withDraw();
}
