//constrcutors.dart
//Constructors are special methods used to initialize objects when they're created.
//Defined using the class name and can have parameters to set initial values for the object's properties.
//Default constructor: If no constructor is defined, Dart provides a default one that initializes all properties to 
//their default values (null for objects, 0 for numbers, false for booleans).
class Car {
  String name;
  String color;
  String model;
  int year;
  String brand;

  //DEFAULT CONSTRUCTOR , named constructor, Parameterized constructor
  Car({
    required this.name,
    required this.color,
    required this.model,
    required this.year,
    required this.brand,
  });
}