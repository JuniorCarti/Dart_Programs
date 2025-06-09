//inheritance.dart
// This code snippet demonstrates inheritance in Dart.
// Inheritance allows a class to inherit properties and methods from another class,
// promoting code reuse and establishing a hierarchical relationship between classes.
// In this example, we will create a base class `Vehicle` and two derived classes `Car` and `Bike`.
// The derived classes will inherit properties and methods from the base class and 
//can also have their own unique features.
class Vehicle {
  String brand;
  int year;

  // Constructor
  Vehicle(this.brand, this.year);

  // Method to display vehicle information
  void displayInfo() {
    print('Brand: $brand, Year: $year');
  }
}
class Car extends Vehicle {
  int numberOfDoors;

  // Constructor
  Car(String brand, int year, this.numberOfDoors) : super(brand, year);

  // Overriding the displayInfo method
  @override
  void displayInfo() {
    super.displayInfo();
    print('Number of Doors: $numberOfDoors');
  }
}
class Bike extends Vehicle {
  String type;

  // Constructor
  Bike(String brand, int year, this.type) : super(brand, year);

  // Overriding the displayInfo method
  @override
  void displayInfo() {
    super.displayInfo();
    print('Type: $type');
  }
}
void main() {
  // Creating a Car object
  Car car = Car('Toyota', 2020, 4);
  car.displayInfo(); // Output: Brand: Toyota, Year: 2020, Number of Doors: 4

  // Creating a Bike object
  Bike bike = Bike('Yamaha', 2019, 'Sport');
  bike.displayInfo(); // Output: Brand: Yamaha, Year: 2019, Type: Sport
}
