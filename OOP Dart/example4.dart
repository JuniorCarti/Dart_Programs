class Login {
  String username;
  String password;
  String _price;
  String _modifySeller;
  String _rateCount; 

  //constructor to initialize all fields
  Login({
    required this.username,
    required this.password,
    required String price,
    required String modifySeller,
    required String rateCount, 
  })  : _price = price,
        _modifySeller = modifySeller,
        _rateCount = rateCount;

  // Method to display login details
  void displayDetails() {
    print('Username: $username');
    print('Password: $password');
    print('Price: $_price');
    print('Modify Seller: $_modifySeller');
    print('Rate Count: $_rateCount');
  }
}
// Creating an object of the Login class
void main() {
  Login myLogin = Login(
    username: "user123",
    password: "pass123",
    price: "1000",
    modifySeller: "seller123",
    rateCount: "5",
  );
  // Displaying the details of the login
  myLogin.displayDetails();
}
