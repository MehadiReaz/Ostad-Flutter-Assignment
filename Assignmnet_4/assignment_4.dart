abstract class Account {
  int accountNumber;
  double balance;
  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print('Deposite $amount \nNew balance: $balance');
  }

  void withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;
  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    balance -= amount;
    balance += balance * interestRate;
    print('Withdrawn $amount New balance with interest: $balance');
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;
  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (amount <= balance + overdraftLimit) {
      balance -= amount;
      print('Withdrawn $amount \nNew balance: $balance');
    } else {
      print('Failed');
    }
  }
}

void main() {
  print('SavingsAccount');
  var savingsAccount = SavingsAccount(1234, 100000, 0.05);
  print('Account Number ${savingsAccount.accountNumber}');
  print('Initial balance ${savingsAccount.balance}');
  print('Interest rate ${savingsAccount.interestRate}');
  savingsAccount.deposit(50000.0);
  savingsAccount.withdraw(20000.0);

  print('');

  print('CurrentAccount');
  var currentAccount = CurrentAccount(4620, 1200000.0, 100000.0);
  print('Account Number ${currentAccount.accountNumber}');
  print('Initial balance ${currentAccount.balance}');
  currentAccount.deposit(100000.0);
  currentAccount.withdraw(250000.0);
}
