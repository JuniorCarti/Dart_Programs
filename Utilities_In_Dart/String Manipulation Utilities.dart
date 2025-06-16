void main() {
  //Basic operations
  String message = "Hello, Dart!";
  print(message.length);
  print(message.toUpperCase());
  print(message.toLowerCase());

  //searching
  print(message.contains("Dart"));
  print(message.startsWith("Hello"));
  print(message.endsWith("Hello"));
  print(message.endsWith("!"));
  print(message.startsWith(","));
}
