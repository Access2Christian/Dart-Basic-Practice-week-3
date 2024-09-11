// bank_accounts.dart

// Abstract class representing a generic Account
abstract class Account {
  // Abstract method for calculating interest
  double calculateInterest();

  // Common method to display account details
  void displayDetails() {
    print('Account Type: ${runtimeType}');
    print('Interest: ${calculateInterest()}');
  }
}

// Class representing a SavingsAccount which extends Account
class SavingsAccount extends Account {
  // Private variables to store balance and interest rate
  double _balance;
  double _interestRate;

  // Constructor to initialize balance and interest rate
  SavingsAccount(this._balance, this._interestRate);

  // Override abstract method to calculate interest specific to SavingsAccount
  @override
  double calculateInterest() {
    return _balance * _interestRate;
  }

  // Method to deposit money into the account
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  // Method to withdraw money from the account
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
    }
  }

  // Method to display the current balance
  void displayBalance() {
    print('Balance: $_balance');
  }
}

// Class representing a CheckingAccount which extends Account
class CheckingAccount extends Account {
  // Private variables to store balance and overdraft limit
  double _balance;
  double _overdraftLimit;

  // Constructor to initialize balance and overdraft limit
  CheckingAccount(this._balance, this._overdraftLimit);

  // Override abstract method to calculate interest specific to CheckingAccount
  @override
  double calculateInterest() {
    return _balance * 0.01; // Example fixed interest rate for checking accounts
  }

  // Method to deposit money into the account
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  // Method to withdraw money from the account
  void withdraw(double amount) {
    if (amount > 0 && amount <= (_balance + _overdraftLimit)) {
      _balance -= amount;
    }
  }

  // Method to display the current balance
  void displayBalance() {
    print('Balance: $_balance');
  }
}

void main() {
  // Create a SavingsAccount object with initial balance and interest rate
  SavingsAccount savings = SavingsAccount(1000.0, 0.05);
  savings.displayDetails(); // Display account type and interest
  savings.displayBalance(); // Display balance
  savings.deposit(500.0); // Deposit money
  savings.withdraw(200.0); // Withdraw money
  savings.displayBalance(); // Display balance after transactions

  // Create a CheckingAccount object with initial balance and overdraft limit
  CheckingAccount checking = CheckingAccount(500.0, 100.0);
  checking.displayDetails(); // Display account type and interest
  checking.displayBalance(); // Display balance
  checking.deposit(300.0); // Deposit money
  checking.withdraw(600.0); // Withdraw money
  checking.displayBalance(); // Display balance after transactions
}
