//inheritance in Dart
//Inheritance enables a new class to reuse, extend, or modify the behavior of an existing class.
//key terms
//Parent Class (Superclass): The class being inherited from.
//Child Class (Subclass): The class that inherits from the parent.
//extends: The keyword used in Dart to create inheritance.
//super: Refers to the parent class (used to call parent methods/constructors).
//syntax inheritance in Dart
class Car {
   String brand;
   String model;
    String color;
    int year;
    String mileage;
    String engine;
    String transmission;
    String fuelType;
    String chassisNumber;

  //the properties of the parent class

  //constructor of the parent class
  Car({
    required this.brand,
    required this.model,
    required this.color,
    required this.year,
    required this.mileage,
    required this.engine,
    required this.transmission,
    required this.fuelType,
    required this.chassisNumber,
  });
}
class Audi extends Car{
  //the properties of the child class

  
  Audi({
    required String brand,
    required String model,
    required String color,
    required int year,
    required String mileage,
    required String engine,
    required String transmission,
    required String fuelType,
    required String chassisNumber,
  }) : super(
    brand: brand,
    model: model,
    color: color,
    year: year,
    mileage: mileage,
    engine: engine,
    transmission: transmission,
    fuelType: fuelType,
    chassisNumber: chassisNumber,
  );

  void displayDetails() {
    print('Car Brand: $brand');
    print('Model: $model');
    print('Color: $color');
    print('Year: $year');
    print('Mileage: $mileage');
    print('Engine: $engine');
    print('Transmission: $transmission');
    print('Fuel Type: $fuelType');
    print('Chassis Number: $chassisNumber');
  }
}
void main() {
  Audi myAudi = Audi(
    brand: "Audi",
    model: "A4",
    color: "Black",
    year: 2022,
    mileage: "15 km/l",
    engine: "2.0L Turbocharged",
    transmission: "Automatic",
    fuelType: "Petrol",
    chassisNumber: "WAUZZZ8V3AA123456",
  );

  // Displaying the details of the car
  myAudi.displayDetails();
}