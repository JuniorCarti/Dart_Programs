// parameterized constructor in Dart
// A parameterized constructor allows you to pass arguments when creating an instance of a class.
// This enables you to initialize the object's properties with specific values at the time of creation.
// This is useful for creating objects with specific attributes without needing to
// set them individually after creation.
class Car {
  String name;
  String color;
  String model;
  int year;
  String brand;

  // Parameterized constructor
  Car({
    required this.name,
    required this.color,
    required this.model,
    required this.year,
    required this.brand,
  });

  // Method to display car details
  void displayDetails() {
    print('Car Name: $name');
    print('Color: $color');
    print('Model: $model');
    print('Year: $year');
    print('Brand: $brand');
  }
}
