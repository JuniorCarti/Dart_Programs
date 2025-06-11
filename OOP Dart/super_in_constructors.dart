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
  TechCompany(String name, int establishedYear, this.techFocus)
    : super(name, establishedYear) {
    print("Tech Company: $name, Focus: $techFocus");
  }
}
void main() {
  // Creating an instance of the TechCompany class
  TechCompany techCompany = TechCompany("Tech Innovations", 2005, "AI and Robotics");
  // Output:
  // Company: Tech Innovations, Established: 2005
  // Tech Company: Tech Innovations, Focus: AI and Robotics
}
