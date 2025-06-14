class User {
  String username;
  String email;

  //constructor to initialize the properties
  User({
    required this.username,
    required this.email,
  });
}

class admin extends User { // Inheriting from User class
  String adminId;
  String role;
  //constructor to initialize all fields
  admin({
    required String username,
    required String email,
    required this.adminId,
    required this.role,
  }) : super(username: username, email: email); // Calling the parent class constructor

  //method to display user details
  void displayDetails() {
    print('Username: $username');
    print('Email: $email');
  }
}
//creating an object of the admin class
void main() {
  admin myAdmin = admin(
    username: "adminUser",
    email: "ridge@gmail.com",
    adminId: "A123",
    role: "SuperAdmin",
  );
  // Displaying the details of the admin
  myAdmin.displayDetails();
  print('Admin ID: ${myAdmin.adminId}');
  print('Role: ${myAdmin.role}');
}
