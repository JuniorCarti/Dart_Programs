//polymorphism.dart
// This code snippet demonstrates polymorphism in Dart.
// Polymorphism allows methods to do different things based on the object it is acting upon.
//// In this example, we will create a base class `Shape` and
/// two derived classes `Circle` and `Rectangle`.
/// // The derived classes will override a method to calculate the area of the shape.
/// // The base class will define a method that can be overridden by the derived classes.
/// // The derived classes will implement their own version of the method.
/// // This allows us to call the same method on different objects and get different results.
/// // The base class `Shape` will define a method `area()` that will be overridden by the derived classes.
/// // The derived classes will implement their own version of the method.
class Shape {
  // Method to calculate area
  double area() {
    return 0.0; // Default implementation
  }
}
class Circle extends Shape {
  double radius;

  // Constructor
  Circle(this.radius);

  // Overriding the area method
  @override
  double area() {
    return 3.14 * radius * radius; // Area of circle
  }
}
class Rectangle extends Shape {
  double length;
  double width;

  // Constructor
  Rectangle(this.length, this.width);

  // Overriding the area method
  @override
  double area() {
    return length * width; // Area of rectangle
  }
}
void main() {
  // Creating a Circle object
  Shape circle = Circle(5.0);
  print('Area of Circle: ${circle.area()}'); // Output: Area of Circle: 78.5

  // Creating a Rectangle object
  Shape rectangle = Rectangle(4.0, 6.0);
  print('Area of Rectangle: ${rectangle.area()}'); // Output: Area of Rectangle: 24.0
}
