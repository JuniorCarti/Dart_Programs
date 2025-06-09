//Object-Oriented Programming (OOP) is a programming paradigm that uses "objects" 
//to design applications and computer programs. Dart, 
//as a modern programming language, has robust support for OOP concepts.
// In this code snippet, we will explore the basic concepts of OOP in Dart, 
//including classes, objects, inheritance, and polymorphism.
//// This code snippet demonstrates the principles of OOP in Dart.
//1. Classes and Objects
class Animal {
  String name;
  int age;

  // Constructor
  Animal(this.name, this.age);

  // Method
  void speak() {
    print('$name makes a sound.');
  }
}
void main() {
  // Creating an object of the Animal class
  Animal dog = Animal('Dog', 5);
  dog.speak(); // Output: Dog makes a sound.

  // Creating another object of the Animal class
  Animal cat = Animal('Cat', 3);
  cat.speak(); // Output: Cat makes a sound.
}

