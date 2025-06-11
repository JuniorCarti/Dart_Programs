//inheritance in Dart
// allows a class to inherit properties and methods from another class, 
//promoting code reuse and establishing a hierarchical relationship between classes.
//Inheritance enables a new class to reuse, extend, or modify the behavior of an existing class.
//Key Terms:
//Parent Class (Superclass): The class being inherited from.
//Child Class (Subclass): The class that inherits from the parent.
//extends: The keyword used in Dart to create inheritance.
//super: Refers to the parent class (used to call parent methods/constructors).

//syntax of inheritance in Dart
class ParentClass {
// Properties
}
class ChildClass extends ParentClass {
  // Additional properties or methods
}

//types of inheritance in Dart
//1. Single Inheritance: A class inherits from one parent class.
//Dart supports single inheritance (a class can inherit from only one parent) 
//but allows multi-level inheritance (a child can further be a parent to another class).
