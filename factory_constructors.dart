//factory constructors.dart
// This code snippet demonstrates the use of factory constructors in Dart.
// Factory constructors are a special type of constructor that can return an instance of a class or a subclass.
// They are useful when you want to control the instantiation process, such as 
//returning a cached instance or creating an instance of a subclass based on some condition.
class Animal {
  String name;
  
  Animal(this.name);
  
  factory Animal.fromType(String type) {
    if (type == 'dog') {
      return Dog('Doggy');
    } else if (type == 'cat') {
      return Cat('Kitty');
    }
    throw ArgumentError('Unknown animal type');
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);
  
  void bark() => print('Woof!');
}

class Cat extends Animal {
  Cat(String name) : super(name);
  
  void meow() => print('Meow!');
}

void main() {
  var dog = Animal.fromType('dog');
  (dog as Dog).bark();
  
  var cat = Animal.fromType('cat');
  (cat as Cat).meow();
}