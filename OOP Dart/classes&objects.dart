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
  // Method to display car details
  void displayDetails() {
    print('Car Name: $name');
    print('Color: $color');
    print('Model: $model');
    print('Brand: $brand');
    print('Owner: $owner');
    print('Registration Number: $registrationNumber');
    print('Engine: $engine');
    print('Transmission: $transmission');
    print('Fuel Type: $fuelType');
    print('Chassis Number: $chassisNumber');
    print('Wheels and Tires: $wheelsAndTires');
    print('Interior: $interior');
    print('Exterior: $exterior');
    print('Safety Features: $safetyFeatures');
    print('Mileage: $mileage km/l');
    print('Year of Manufacture: $year');

  }
}

//creating objects
void main() {
  // creating an object of the car class
  Car myCar = Car(
    name: 'Mercedes-Benz',
    color: 'Red',
    model: '2023',
    brand: 'Mercedes',
    owner: 'Ridge Junior',
    registrationNumber: 'ABC1234',
    engine: 'Electric',
    transmission: 'Automatic',
    fuelType: 'Electric',
    chassisNumber: '1HGCM82633A123456',
    wheelsAndTires: '18 inch alloy wheels',
    interior: 'Leather seats, touchscreen display',
    exterior: 'Sleek design, sunroof',
    safetyFeatures: 'Airbags, ABS, Traction Control',
    mileage: 15,
    year: 2023,
  );
  //calling the method to display car details
  myCar.displayDetails();
}
// We define a Car class with a number of properties (brand, model, year) and one method (displayDetails()).
//In main(), we create a Car object named myCar.
//We set the properties of myCar using dot notation.
//We call the displayDetails() method on myCar.