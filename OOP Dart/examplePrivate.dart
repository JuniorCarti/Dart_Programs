class Login {
  //lets make all fields private
  String _username;
  String _password;
  String _price;
  String _modifySeller;
  String _rateCount;

  //constructor  to intialize all fields
  Login({
    required String username,
    required String password,
    required String price,
    required String modifySeller,
    required String rateCount,
  }) : _username = username,
       _password = password,
       _price = price,
       _modifySeller = modifySeller,
       _rateCount = rateCount;

  //getters methods to access private fields
  String get username => _username;
  String get password => _password;
  String get price => _price;
  String get modifySeller => _modifySeller;
  String get rateCount => _rateCount;

  //setters methods to modify private fields
  set username(String username) {
    if (username.isEmpty) {
      throw ArgumentError('Username cannot be empty');
    } else if (username.length < 3) {
      throw ArgumentError('Username must be at least 3 characters long');
    } else if (username.length > 20) {
      throw ArgumentError('Username cannot be more than 20 characters long');
    }
    _username = username;
  }

  set password(String password) {
    if (password.isEmpty) {
      throw ArgumentError('Password cannot be empty');
    } else if (password.length < 6) {
      throw ArgumentError('Password must be at least 6 characters long');
    } else if (password.length > 20) {
      throw ArgumentError('Password cannot be more than 20 characters long');
    }
    _password = password;
  }

  //method to display login details
  bool login() {
    if (_username == "ri" && _password == "pass123") {
      print("Login successful!");
      return true;
    } else {
      print('Invalid Username or Password');
      return false;
    }
  }
}

void main() {
  // Creating an object of the Login class
  Login myLogin = Login(
    username: "ridge",
    password: "pass123",
    price: "1000",
    modifySeller: "seller123",
    rateCount: "5",
  );
  // Displaying the details of the login
  myLogin.login();
}
