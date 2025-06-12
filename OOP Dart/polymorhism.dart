//polymorhism in dart
// Polymorphism in Dart allows methods to do different things based on the object that it is acting upon.
// It enables a single interface to represent different underlying forms (data types).
// Key terms
// - Polymorphism: The ability of different classes to be treated as instances of the same class through 
//a common interface.
//basic syntax 
class Animal {
  void sound() {
    print("Animal makes a sound");
  }
}
class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks");
  }
}
class Cat extends
Animal {
  @override
  void sound() {
    print("Cat meows");
  }
}
void main() {
  Animal myDog = Dog(); // Upcasting
  Animal myCat = Cat(); // Upcasting
  
  myDog.sound(); // Outputs: Dog barks
  myCat.sound(); // Outputs: Cat meows
  
}

