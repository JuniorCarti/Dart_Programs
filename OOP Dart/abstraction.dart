//Abstraction means showing only the necessary details and hiding the internal complexity.
//It helps in reducing complexity and improving code maintainability.
// In Dart, abstraction can be achieved using abstract classes and interfaces.
//example is driving a car
//You only need to know how to use the steering wheel, pedals, and gears (abstraction).
//You don’t need to know how the engine, transmission, or ECU works (hidden implementation).
//Dart supports abstraction through abstract classes and interfaces and mixins.
//example of abstraction in Dart
abstract class Vehicle {
  void start(); // Abstract method to start the vehicle
  void stop(); // Abstract method to stop the vehicle
}
class Car extends Vehicle {
  @override
  void start() {
    print("Car is starting..."); // Implementation of the start method for Car
  }

  @override
  void stop() {
    print("Car is stopping..."); // Implementation of the stop method for Car
  }
}
class Bike extends Vehicle {
  @override
  void start() {
    print("Bike is starting..."); // Implementation of the start method for Bike
  }

  @override
  void stop() {
    print("Bike is stopping..."); // Implementation of the stop method for Bike
  }
}
class Truck extends Vehicle {
  @override
  void start() {
    print("Truck is starting..."); // Implementation of the start method for Truck
  }

  @override
  void stop() {
    print("Truck is stopping..."); // Implementation of the stop method for Truck
  }
}
void main() {
  Vehicle car = Car(); // Creating an instance of Car
  car.start(); // Output: Car is starting...
  car.stop(); // Output: Car is stopping...

  Vehicle bike = Bike(); // Creating an instance of Bike
  bike.start(); // Output: Bike is starting...
  bike.stop(); // Output: Bike is stopping...

  Vehicle truck = Truck(); // Creating an instance of Truck
  truck.start(); // Output: Truck is starting...
  truck.stop(); // Output: Truck is stopping...
}
// This example demonstrates abstraction in Dart using abstract classes.
// The `Vehicle` class is an abstract class that defines the interface for vehicles,
// while the `Car`, `Bike`, and `Truck` classes provide specific implementations of the abstract methods.
// This allows you to work with different types of vehicles without needing to know their internal details.
// Abstraction helps in reducing complexity and improving code maintainability by hiding the implementation details.
// You can create more vehicle types by extending the `Vehicle` class and implementing the abstract methods.
// This way, you can easily add new vehicle types without modifying the existing code.
// You can also use interfaces in Dart to achieve abstraction.
// An interface in Dart is defined using an abstract class with no implementation.
