//abstraction.dart
// This code snippet demonstrates abstraction in Dart.
// Abstraction is a fundamental concept in object-oriented programming that 
//allows you to hide complex implementation details
// and expose only the necessary parts of an object.
// In Dart, abstraction can be achieved using abstract classes and interfaces.
abstract class Animal {
  // Abstract method (does not have an implementation)
  void makeSound();

  // Concrete method
  void sleep() {
    print('Sleeping...');
  }
}
class Dog extends
    Animal {
  // Implementing the abstract method
  @override
  void makeSound() {
    print('Woof Woof!');
  }
}
class Cat extends
    Animal {
  // Implementing the abstract method
  @override
  void makeSound() {
    print('Meow Meow!');
  }
}
void main() {
  // Creating objects of Dog and Cat classes
  Animal dog = Dog();
  Animal cat = Cat();

  // Calling the makeSound method
  dog.makeSound(); // Output: Woof Woof!
  cat.makeSound(); // Output: Meow Meow!

  // Calling the sleep method
  dog.sleep(); // Output: Sleeping...
  cat.sleep(); // Output: Sleeping...
}


