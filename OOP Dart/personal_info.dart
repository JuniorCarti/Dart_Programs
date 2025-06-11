class PersonalInfo {
  //The properties (fields) of the PersonalInfo class
  String name;
  String email;
  String phoneNumber;
  String address;
  bool isEmployed;
  bool isLoggedIn;

  //constructor to initialize all fields
  PersonalInfo({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.address,
    required this.isEmployed,
    required this.isLoggedIn,
  });
  // Method to display personal information
  void displayInfo() {
    print('Name: $name');
    print('Email: $email');
    print('Phone Number: $phoneNumber');
    print('Address: $address');
    print('Employed: ${isEmployed ? "Yes" : "No"}');
    print('Logged In: ${isLoggedIn ? "Yes" : "No"}');
  }
  //main method to create an instance of PersonalInfo and display the information
  void main() {
    // Create an instance of PersonalInfo
    PersonalInfo person = PersonalInfo(  //we have created an instance of the PersonalInfo class
      name: 'Kate Wambui',
      email: 'katewambui@gmail.com',
      phoneNumber: '0712345678',
      address: '123 Main Street, Nairobi',
      isEmployed: true,
      isLoggedIn: true,
    );
  }
  // Display the personal information
 
}
