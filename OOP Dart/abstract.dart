abstract class Animals {
  void makeSound();
  void eat();
  void sleep();
  void move();
}
class Dog implements Animals {
  @override
  void makeSound(){
    print("Woof! Woof!");
  }
  @override
  void eat() {
    print("Dog is eating.");
  }
  @override
  void sleep() {
    print("Dog is sleeping.");
  }
  @override
  void move() {
    print("Dog is running.");
  }
}
class Cat implements Animals {
  @override
  void makeSound() {
    print("Meow! Meow!");
  }
  @override
  void eat() {
    print("Cat is eating.");
  }
  @override
  void sleep() {
    print("Cat is sleeping.");
  }
  @override
  void move() {
    print("Cat is jumping.");
  }
}
class Bird implements Animals {
  @override
  void makeSound() {
    print("Chirp! Chirp!");
  }
  @override
  void eat() {
    print("Bird is eating.");
  }
  @override
  void sleep() {
    print("Bird is sleeping.");
  }
  @override
  void move() {
    print("Bird is flying.");
  }
}
class Fish implements Animals {
  @override
  void makeSound() {
    print("Blub! Blub!");
  }
  @override
  void eat() {
    print("Fish is eating.");
  }
  @override
  void sleep() {
    print("Fish is sleeping.");
  }
  @override
  void move() {
    print("Fish is swimming.");
  }
}
void main() {
  Dog dog = Dog();
  dog.makeSound();
  dog.eat();
  dog.sleep();
  dog.move();

  Cat cat = Cat();
  cat.makeSound();
  cat.eat();
  cat.sleep();
  cat.move();

  Bird bird = Bird();
  bird.makeSound();
  bird.eat();
  bird.sleep();
  bird.move();

  Fish fish = Fish();
  fish.makeSound();
  fish.eat();
  fish.sleep();
  fish.move();
}
