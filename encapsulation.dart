//encapsulation.dart
// This file demonstrates encapsulation in Dart.
// Encapsulation is a fundamental concept in object-oriented programming 
//that restricts direct access to an object's data and methods.
// It allows you to control how the data is accessed and modified,
// promoting data integrity and security.
// In Dart, encapsulation is achieved using classes and access modifiers.
// The following code snippet illustrates encapsulation by defining 
//a class with private fields and public methods.
class BankAccount {
  // Private fields
  String _accountNumber;
  double _balance;

  // Constructor
  BankAccount(this._accountNumber, this._balance);

  // Public method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited: \$${amount.toStringAsFixed(2)}');
    } else {
      print('Deposit amount must be positive.');
    }
  }

  // Public method to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdrew: \$${amount.toStringAsFixed(2)}');
    } else {
      print('Insufficient balance or invalid withdrawal amount.');
    }
  }

  // Public method to check balance
  double getBalance() {
    return _balance;
  }
}
void main() {
  // Creating a BankAccount object
  BankAccount account = BankAccount('123456789', 1000.0);
  // Depositing money
  account.deposit(200.0); // Output: Deposited: $200.00
  // Withdrawing money
  account.withdraw(150.0); // Output: Withdrew: $150.00
  // Checking balance
  print('Current Balance: \$${account.getBalance().toStringAsFixed(2)}'); // Output: Current Balance: $1050.00
