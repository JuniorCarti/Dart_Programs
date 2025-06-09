//getters and setters
// Getters and setters are used to access and modify the properties of a class.
// They provide a way to encapsulate the internal state of an object and control how it is accessed or modified.
class Person {
  String _name;
  int _age;

  // Getter for name
  String get name => _name;

  // Setter for name
  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    } else {
      throw ArgumentError('Name cannot be empty');
    }
  }

  // Getter for age
  int get age => _age;

  // Setter for age
  set age(int value) {
    if (value >= 0) {
      _age = value;
    } else {
      throw ArgumentError('Age cannot be negative');
    }
  }

  Person(this._name, this._age);
}
