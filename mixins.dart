//mixins in Dart are a way to add functionality to classes without using inheritance.
//They allow you to define methods and properties that can be shared across multiple classes.
// Mixins are a powerful feature in Dart that allows you to add functionality to classes without using inheritance.
// They enable code reuse and help avoid the limitations of single inheritance.
// Mixins can be applied to classes using the `with` keyword.
mixin Logger {
  void log(String message) {
    print('Log: $message');
  }
}
