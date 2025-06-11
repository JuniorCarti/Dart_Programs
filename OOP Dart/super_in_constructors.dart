//using super in constructors
// The `super` keyword can also be used in constructors to call the constructor of the parent class.
// This is useful when the parent class has a constructor that requires parameters.

class Company {
  String name;
  int establishedYear;

  // Parent class constructor
  Company(this.name, this.establishedYear) {
    print("Company: $name, Established: $establishedYear");
  }
}
class TechCompany extends Company {
  String techFocus;

  // Child class constructor
