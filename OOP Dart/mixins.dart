//mixins in dart
// Mixins are a way to reuse a class's code in multiple class hierarchies.
// They allow you to add functionality to classes without using inheritance.
// Mixins are defined using the `mixin` keyword and can be applied to classes using the `with` keyword.
//mixins allow a class to inherit properties and methods from multiple classes without using traditional inheritance
//inheritance is a one-to-one relationship, while mixins allow for a one-to-many relationship
//defining a mixin in Dart
mixin mixinName {
  // Properties and methods of the mixin
  void mixinMethod() {
    print("This is a method from the mixin.");
  }
}
// Applying a mixin to a class
class MyClass with mixinName { // MyClass is a class that uses the mixinName mixin , 
//uses keyword `with` to apply the mixin
  // MyClass can use the properties and methods of mixinName
  void myClassMethod() {
    print("This is a method from MyClass.");
  }
}
// Define AnotherMixin before using it
mixin AnotherMixin {
  void anotherMixinMethod() {
    print("This is a method from AnotherMixin.");
  }
}
mixin AnotherMixin2 {
  void anotherMixin2Method() {
    print("This is a method from AnotherMixin2.");
  }
}
mixin AnotherMixin3 {
  void anotherMixin3Method() {
    print("This is a method from AnotherMixin3.");
  }
}

//multiple mixins can be applied to a class
class AnotherClass with mixinName, AnotherMixin, AnotherMixin2, AnotherMixin3 { // AnotherClass uses multiple mixins
  void anotherClassMethod() {
    print("This is a method from AnotherClass.");
  }
}