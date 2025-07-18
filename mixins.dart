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
mixin Timestamped {
  String get timestamp => DateTime.now().toIso8601String();
}
mixin ErrorHandler {
  void handleError(String error) {
    print('Error: $error at ${DateTime.now()}');
  }
}
mixin Auditable {
  void audit(String action) {
    print('Audit: $action at ${DateTime.now()}');
  }
}
mixin Validatable {
  bool validate(String input) {
    if (input.isEmpty) {
      print('Validation failed: Input cannot be empty.');
      return false;
    }
    print('Validation passed for input: $input');
    return true;
  }
}