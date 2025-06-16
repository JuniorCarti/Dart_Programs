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
  print(message.indexOf("Hello"));
  print(message.indexOf("Dart"));

  //substrings
  print(message.substring(7));
  print(message.substring(0, 7));

  //splitting and joining
  print(message.split(","));
  print(["Hello", "Dart"].join(" "));
  
}
