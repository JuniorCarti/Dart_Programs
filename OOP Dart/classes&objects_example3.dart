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
// Creating an instance of the LoginProfile class and displaying its details
  void main(){
    // Create an instance of the LoginProfile class
    LoginProfile profile = LoginProfile(
      username: 'RidgeJunior',
      password: 'securePassword123',
      email: 'ridgejunior@gmail.com',
      phoneNumber: '+254123456789',
      lastLogin: DateTime.now(), // Current date and time using DateTime.now() that returns the current date and time
      isActive: true,
    );
  }
}