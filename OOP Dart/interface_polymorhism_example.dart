//example of interface polymorphism in Dart
//using abstract classes and interfaces
abstract class Database {
  void connect(); // Method to connect to the database
  void disconnect(); // Method to disconnect from the database
}
class MySQLDatabase implements Database {
  @override
  void connect(){
    print("Connecting to MySQL database...");
  }
  @override
  void disconnect() {
    print("Disconnecting from MySQL database...");
  }
}