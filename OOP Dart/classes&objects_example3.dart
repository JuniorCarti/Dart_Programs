//lets create a class called Login Profile
class LoginProfile {
  // Properties of the LoginProfile class
  String username;
  String password;
  String email;
  String phoneNumber;
  DateTime lastLogin;
  bool isActive;

  // Constructor to initialize all fields
  LoginProfile({
    required this.username,
    required this.password,
    required this.email,
    required this.phoneNumber,
    required this.lastLogin,
    required this.isActive,
  });

  // Method to display login profile details
  void displayDetails() {
    print('Username: $username');
    print('Email: $email');
    print('Phone Number: $phoneNumber');
    print('Last Login: $lastLogin');
    print('Active Status: ${isActive ? "Active" : "Inactive"}');
  }
  
}