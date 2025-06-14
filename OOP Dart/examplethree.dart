class Person {
  String name;
  int age;
  String dateOfBirth;

  //constructor
  Person({
    required this.name,
    required this.age,
    required this.dateOfBirth,
  });

  void displayDetails() {
    print('Name: $name');
    print('Age: $age');
    print('Date of Birth: $dateOfBirth');
  }
}
//creating an object
void main() {
  Person person = Person(
    name: "John Doe",
    age: 30,
    dateOfBirth: "1993-01-01",
  );
  // Displaying the details of the person
  person.displayDetails();
}

