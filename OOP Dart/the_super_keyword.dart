//the super keyword
// The `super` keyword in Dart is used to refer to the parent class. 
//It allows you to call methods or constructors of the parent class from within a child class.
//used to access the parent class's properties and methods or constructors.
//access overridden methods from the parent class.
class Electronics {
  // parent class
  void display() { // Parent class method
    print("Electronics display method"); // Output: Electronics display method
  }
}
class Mobile extends Electronics {
  // child class
  @override // Annotation indicating method overriding
  void display() { // Overriding the parent class method
    print("Mobile display method"); // Output: Mobile display method
  }

  void showParentDisplay() {
    super.display(); // Calling the parent class's display method
  }
}
void main() {
  Mobile mobile = Mobile(); // Creating an instance of the child class
  mobile.display(); // Calling the overridden method from the child class
  // Output: Mobile display method

  mobile.showParentDisplay(); // Calling the parent class's display method using super
  // Output: Electronics display method
}
