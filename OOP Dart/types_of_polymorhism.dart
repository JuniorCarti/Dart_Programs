//types of polymorphism in dart
// There are two main types of polymorphism in Dart:
// 1. Compile-time polymorphism (Method Overloading)
// 2. Runtime polymorphism (Method Overriding)
// Compile-time polymorphism is achieved through method overloading, 
//where multiple methods can have the same name but different parameters.
// Runtime polymorphism is achieved through method overriding,
//where a subclass provides a specific implementation of a method that is already defined in its superclass.
// In Dart, polymorphism is primarily achieved through method overriding.
//example of runtime polymorphism
class Student {
  void study() { // This method can be overridden in subclasses
    print("Student is studying");
  }
}
class GraduateStudent extends Student {
  @override
  void study() { // Overriding the study method
    print("Graduate student is studying advanced topics");
  }
}
class UndergraduateStudent extends Student {
  @override
  void study() { // Overriding the study method
    print("Undergraduate student is studying basic topics");
  }
}
class HighSchoolStudent extends Student {
  @override
  void study() { // Overriding the study method
    print("High school student is studying high school subjects");
  }
}
void main() {
  Student student1 = GraduateStudent(); // Upcasting
  Student student2 = UndergraduateStudent(); // Upcasting
  Student student3 = HighSchoolStudent(); // Upcasting
  
  student1.study(); // Outputs: Graduate student is studying advanced topics
  student2.study(); // Outputs: Undergraduate student is studying basic topics
  student3.study(); // Outputs: High school student is studying high school subjects
}