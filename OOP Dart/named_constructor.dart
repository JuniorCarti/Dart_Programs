//named constructor.dart
//Useful when you want multiple ways to create objects.
//named constructor allows you to create multiple constructors with different names for the same class.
// This allows for more flexibility in object creation, especially when you need to initialize objects in different ways.
class Car {
  String name;
  String color;
  String model;
  int year;
  String brand;

  // Default constructor
  Car({
    required this.name,
    required this.color,
    required this.model,
    required this.year,
    required this.brand,
  });

  // Named constructor for electric cars
  Car.electric({
    required this.name,
    required this.color,
    required this.model,
    required this.year,
    required this.brand,
  }) {
    print('This is an electric car.');
  }

  // Method to display car details
  void displayDetails() {
    print('Car Name: $name');
    print('Color: $color');
    print('Model: $model');
    print('Year: $year');
    print('Brand: $brand');
  }
}

// Creating objects using the default and named constructors
void main() {
  // Creating an object using the default constructor
  Car myCar = Car(
    name: 'Model S',
    color: 'Red',
    model: '2023',
    year: 2023,
    brand: 'Tesla',
  );

  // Displaying car details
  myCar.displayDetails();

  // Creating an object using the named constructor for electric cars
  Car myElectricCar = Car.electric(
    name: 'Model X',
    color: 'Blue',
    model: '2023',
    year: 2023,
    brand: 'Tesla',
  );

  // Displaying electric car details
  myElectricCar.displayDetails();
  print('This is an electric car created using a named constructor.');
}

