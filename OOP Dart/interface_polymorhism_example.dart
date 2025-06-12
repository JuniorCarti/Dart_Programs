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
void main() {
  // Creating instances of different database implementations
  Database mysql = MySQLDatabase();
  Database mongodb = MongoDBDatabase();
  Database postgresql = PostgreSQLDatabase();
  Database sqlite = SQLiteDatabase();

  // Using polymorphism to connect and disconnect from different databases
  mysql.connect(); // Outputs: Connecting to MySQL database...
  mysql.disconnect(); // Outputs: Disconnecting from MySQL database...

  mongodb.connect(); // Outputs: Connecting to MongoDB database...
  mongodb.disconnect(); // Outputs: Disconnecting from MongoDB database...

  postgresql.connect(); // Outputs: Connecting to PostgreSQL database...
  postgresql.disconnect(); // Outputs: Disconnecting from PostgreSQL database...

  sqlite.connect(); // Outputs: Connecting to SQLite database...
  sqlite.disconnect(); // Outputs: Disconnecting from SQLite database...
}