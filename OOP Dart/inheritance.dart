//inheritance in Dart
//Inheritance enables a new class to reuse, extend, or modify the behavior of an existing class.
//key terms
//Parent Class (Superclass): The class being inherited from.
//Child Class (Subclass): The class that inherits from the parent.
//extends: The keyword used in Dart to create inheritance.
//super: Refers to the parent class (used to call parent methods/constructors).
//syntax inheritance in Dart
class ParentClass {
  //the properties of the parent class

  //constructor of the parent class
  ParentClass() {
    //initialization code for parent class
  }
}
class ChildClass extends ParentClass{
  //the properties of the child class
  //the child class can access the properties of the parent class
  //the child class can also override the methods of the parent class
  //the child class can also add new methods and properties
  //the child class can also call the parent class constructor using super()
  
  ChildClass() : super(); //calling parent constructor
}