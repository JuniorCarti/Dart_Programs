//another example of encapsulation in Dart
class Login {
  String _username; // private member
  String _password; // private member

  // Constructor to initialize the login credentials
  Login({
    required String username,
    required String password,
  })  : _username = username,
        _password = password;

  // Public method to validate login credentials
  bool validateCredentials(String username, String password) {
    return _username == username && _password == password;
  }

  // Public method to change the password
  void changePassword(String newPassword) {
    if (newPassword.isNotEmpty) {
      _password = newPassword;
      print('Password changed successfully.');
    } else {
      print('New password cannot be empty.');
    }
  }
  // Public method to get the username
  String getUsername() {
    return _username;
  }
  // Public method to get the password
  String getPassword() {
    return _password;
  }
  // Public method to display login details

  void displayLoginDetails() {
    print('Username: $_username');
    // Note: Password is not displayed for security reasons
    print('Password: ********'); // Masked password
  }
}
