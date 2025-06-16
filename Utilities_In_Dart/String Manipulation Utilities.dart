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

  //Trimming
  String spaced = " trim me ";
  print(spaced.trim());
  print(spaced.trimLeft());
  print(spaced.trimRight());

  //padding
  print('5'.padLeft(3, '0'));
  print('5'.padRight(3, '0'));
}
