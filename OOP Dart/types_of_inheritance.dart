//the types of inheritance in dart
// 1. Single Inheritance: A class inherits from one parent class.
//Dart supports single inheritance (a class can inherit from only one parent)
//but allows multi-level inheritance (a child can further be a parent to another class).
//example of single inheritance in Dart
class Animal {
  // Parent class
  void sound() {
    // Animal class method
    print("Animal makes a sound"); // Output: Animal makes a sound
  }
}

class Dog extends Animal {
  // Child class
  void walk() {
    print("Dog walks"); // Output: Dog walks
  }
}
void main() {
  Dog dog = Dog(); // Creating an instance of the Dog class
  dog.sound(); // Calling method from parent class
  dog.walk(); // Calling method from child class
}