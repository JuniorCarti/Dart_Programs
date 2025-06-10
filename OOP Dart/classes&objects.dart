//classes and objects
//understanding classes and objects in dart
// a class is a blueprint for creating objects
// an object is an instance of a class
// a class can have properties and methods
//A class is a blueprint for creating objects.
//It defines properties (variables) and behaviors (methods) that the objects created from the class will have.
//An object is an instance of a class. It's a concrete entity based on the class blueprint.
//Real-world analogy: Think of a class as a blueprint for a house.
//The blueprint defines the structure (number of rooms, floors, etc.), but it's not a house itself.
//The object is the actual house built from that blueprint.
//Basic structure of a class in Dart:
class Car {
  // Properties (fields)
  //These are the attributes of the class. (The variables that hold data) The core components of a car.
  String name;
  String color;
  String model;
  String brand;
  String owner;
  String registrationNumber;
  String engine;
  String transmission;
  String fuelType;
  String chassisNumber;
  String wheelsAndTires;
  String interior;
  String exterior;
  String safetyFeatures;
  int mileage;
  int year;

  // Constructor to initialize all fields
  Car({
    required this.name,
    required this.color,
    required this.model,
    required this.brand,
    required this.owner,
    required this.registrationNumber,
    required this.engine,
    required this.transmission,
    required this.fuelType,
    required this.chassisNumber,
    required this.wheelsAndTires,
    required this.interior,
    required this.exterior,
    required this.safetyFeatures,
    required this.mileage,
    required this.year,
  });
}
