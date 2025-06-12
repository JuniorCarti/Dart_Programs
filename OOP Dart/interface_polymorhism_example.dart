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
class MongoDBDatabase implements Database {
  @override
  void connect() {
    print("Connecting to MongoDB database...");
  }
  @override
  void disconnect() {
    print("Disconnecting from MongoDB database...");
  }
}
class PostgreSQLDatabase implements Database {
  @override
  void connect() {
    print("Connecting to PostgreSQL database...");
  }
  @override
  void disconnect() {
    print("Disconnecting from PostgreSQL database...");
  }
}
class SQLiteDatabase implements Database {
  @override
  void connect() {
    print("Connecting to SQLite database...");
  }
  @override
  void disconnect() {
    print("Disconnecting from SQLite database...");
  }
}