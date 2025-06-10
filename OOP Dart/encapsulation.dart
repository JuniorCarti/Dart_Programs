//encapsulation.dart
// Encapsulation is a fundamental concept in object-oriented programming
//that restricts direct access to an object's data and methods.
// It allows you to control how the data is accessed and modified, promoting data hiding and abstraction.
// In Dart, encapsulation is achieved using access modifiers like `private` and `public`.
//using encapsulation, you can protect the internal state of an object and expose
//only what is necessary through public methods.
//private members are accessible only within the class,
//while public members can be accessed from outside the class.
//In Dart, prefix a variable or method with an underscore _ to make it private to its library.
class BankAccount {
  String _accountNumber; //private member
  double _balance; //private member double holds large numbers hence used for balance
  String _0wnerName; //private member

  // Constructor to initialize the account 
  BankAccount({
    required String accountNumber,
    required double balance,
    required String ownerName,
  }):
       _accountNumber = accountNumber,
       _balance = balance,
       _0wnerName = ownerName;
  //public method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited \$$amount. New balance: \$$_balance');
    } else {
      print('Deposit amount must be positive.');
    }
  }

}
