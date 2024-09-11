# Bank Account Simulation

## Overview

This Dart program demonstrates object-oriented programming concepts including encapsulation, inheritance, polymorphism, and abstraction. It simulates a basic banking system with two types of accounts: SavingsAccount and CheckingAccount. The program showcases how these concepts are applied in practice.

## Features

- **Encapsulation**: Sensitive data is encapsulated using private variables, and controlled access is provided through methods.
- **Inheritance**: `SavingsAccount` and `CheckingAccount` classes inherit from a common abstract class `Account`.
- **Polymorphism**: Different account types override the `calculateInterest` method to provide their specific implementations.
- **Abstraction**: The `Account` class defines abstract methods that are implemented by its subclasses.

## File Structure

- `bank_accounts.dart`: Contains the Dart code implementing the bank account simulation.

## How to Run

1. **Ensure Dart is Installed**: Make sure Dart SDK is installed on your system. You can download it from [Dart's official website](https://dart.dev/get-dart).

2. **Create the Dart File**:
   - Save the provided Dart code into a file named `bank_accounts.dart`.

3. **Run the Program**:
   - Open a terminal or command prompt.
   - Navigate to the directory containing `bank_accounts.dart`.
   - Execute the program using the command:
     ```sh
     dart run bank_accounts.dart
     ```

## Code Explanation

1. **Encapsulation**:
   - Private variables `_balance`, `_interestRate`, and `_overdraftLimit` are used.
   - Methods like `deposit` and `withdraw` control access to these private variables.

2. **Inheritance**:
   - `SavingsAccount` and `CheckingAccount` inherit from the abstract `Account` class.

3. **Polymorphism**:
   - Both `SavingsAccount` and `CheckingAccount` provide their own implementation of `calculateInterest`.

4. **Abstraction**:
   - `Account` is an abstract class with an abstract method `calculateInterest`, implemented by subclasses.

## Example Output
Account Type: SavingsAccount Interest: 50.0 Balance: 1000.0 Balance: 1300.0 Balance: 1100.0 Account Type: CheckingAccount Interest: 5.0 Balance: 500.0 Balance: 800.0 Balance: 200.0


## Contributing

Feel free to submit a pull request or open an issue if you have suggestions or improvements for this project.

## License

This project is part of the Dart basic practise week 3 in Power Learn Project Africa (PLP)

## Author
Nnaji, Christian- Access2Christian