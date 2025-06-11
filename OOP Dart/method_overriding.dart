//method overriding in Dart
// Method overriding allows a subclass to provide a specific implementation of a method 
//that is already defined in its superclass.
//A child class can override a parent's method to provide a different implementation.
// Key terms
// - Method Overriding: Redefining a method in a subclass that already exists in the parent class.
// - @override: An annotation used to indicate that a method is being overridden.
// - super: Used to call the parent class's method from the child class.

class Laptop {
  // Parent class
  void display(){ // Parent class method
    print("Laptop display method"); // Output: Laptop display method
  }
}
class GamingLaptop extends Laptop {
  //child class
  @override // Annotation indicating method overriding
  void display() { // Overriding the parent class method
    print("Gaming Laptop display method"); // Output: Gaming Laptop display method
  }
}
void main() {
  GamingLaptop gamingLaptop = GamingLaptop(); // Creating an instance of the child class
  gamingLaptop.display(); // Calling the overridden method from the child class
  // Output: Gaming Laptop display method
}