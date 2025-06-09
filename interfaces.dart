//interfaces // In Dart, interfaces are a way to define a contract that classes can implement.
// Interfaces allow you to define methods that must be implemented by any class that implements the interface.
// This code snippet demonstrates how to create and use interfaces in Dart.
// Interface as abstract class
abstract class Flyable {
  void fly();
}

class Bird implements Flyable {
  @override
  void fly() {
    print('The bird is flying.');
  }
}

class Airplane implements Flyable {
  @override
  void fly() {
    print('The airplane is flying.');
  }
}

void main() {
  var bird = Bird();
  bird.fly();
  
  var plane = Airplane();
  plane.fly();
}
