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
// Example usage of Animal class
void animalExample() {
  // Creating an object of the Animal class
  Animal dog = Animal('Dog', 5);
  dog.speak(); // Output: Dog makes a sound.

  // Creating another object of the Animal class
  Animal cat = Animal('Cat', 3);
  cat.speak(); // Output: Cat makes a sound.
}
//2. Inheritance
// Inheritance allows a class to inherit properties and methods from another class.
class Dog extends Animal {
  // Constructor
  Dog(String name, int age) : super(name, age);

  // Overriding the speak method
  @override
  void speak() {
    print('$name barks.');
  }
}
class Cat extends Animal {
  // Constructor
  Cat(String name, int age) : super(name, age);

  // Overriding the speak method
  @override
  void speak() {
    print('$name meows.');
  }
}
void main() {
  // Creating an object of the Dog class
  Dog dog = Dog('Buddy', 4);
  dog.speak(); // Output: Buddy barks.

  // Creating an object of the Cat class
  Cat cat = Cat('Whiskers', 2);
  cat.speak(); // Output: Whiskers meows.
}


