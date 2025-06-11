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
  String _bankName = 'ABC Bank'; //private member
  double _balance; //private member double holds large numbers hence used for balance
  String _0wnerName; //private member

  // Constructor to initialize the account 
  BankAccount({
    required String accountNumber,
    required double balance,
    required String ownerName,
    required String bankName,
  }):
       _accountNumber = accountNumber,
       _balance = balance,
       _0wnerName = ownerName,
       _bankName = bankName;       
       
  //public method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited \$$amount. New balance: \$$_balance');
    } else {
      print('Deposit amount must be positive.');
    }
  }
  //public method to withdraw money <=500, 600 -4
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdrew \$$amount. New balance: \$$_balance');
    } else if (amount > _balance) {
      print('Insufficient funds for withdrawal.');
    } else {
      print('Withdrawal amount must be positive.');
    }
  }
  //public method to get balance
  double getBalance() {
    return _balance;
  }
  //public method to get account number
  String getAccountNumber() {
    return _accountNumber;
  }
  //public method to get owner name
  String getOwnerName() {
    return _0wnerName;
  }
  //public method to get bank name
  String getBankName() {
    return _bankName;
  }

  void main(){
    // Creating a BankAccount object
    BankAccount myAccount = BankAccount(
      accountNumber: '34584032947',
      balance: 1000.0,
      ownerName: 'Rahul Sharma',
      bankName: 'ABC Bank',
    );

    // Displaying initial account details
    print('Account Number: ${myAccount.getAccountNumber()}');
    print('Owner Name: ${myAccount.getOwnerName()}');
    print('Initial Balance: \$${myAccount.getBalance()}');
    print('BAnk Name: ${myAccount.getBankName()}');

    // Depositing money
    myAccount.deposit(500.0);

    // Withdrawing money
    myAccount.withdraw(200.0);

    // Trying to withdraw more than the balance
    myAccount.withdraw(1500.0);

    // Displaying final balance
    print('Final Balance: \$${myAccount.getBalance()}');
  }


}
