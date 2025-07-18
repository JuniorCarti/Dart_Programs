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
  Car({ String name = '', String color = '', String model = '', int year = 0, String brand = '' }) : 
    name = name,  
    color = color, 
    model = model, 
    year = year, 
    brand = brand;

  // Method to display car details
  void displayDetails() {
    print('Car Name: $name');
    print('Color: $color');
    print('Model: $model');
    print('Year: $year');
    print('Brand: $brand');
  }
}
void main() {
  // Creating an object using the parameterized constructor
  Car myCar = Car(
    name: 'Model S',
    color: 'Red',
    model: '2023',
    year: 2023,
    brand: 'Tesla',
  );

  // Displaying car details
  myCar.displayDetails();
}
