//static members are members that are associated with the class itself rather than with instances of the class.
// They can be accessed without creating an instance of the class.
class MathUtils {
  // Static method to calculate the square of a number
  static int square(int number) {
    return number * number;
  }

  // Static method to calculate the cube of a number
  static int cube(int number) {
    return number * number * number;
  }

  // Static constant for Pi
  static const double pi = 3.14159;

  // Static property to hold the last calculated value
  static int lastCalculatedValue = 0;

  // Static method to reset the last calculated value
  static void resetLastCalculatedValue() {
    lastCalculatedValue = 0;
  }

  
}
