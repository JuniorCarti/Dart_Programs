//create a class Course
// lets create a class called Course
class Course {
  // Properties of the Course class
  String courseName;
  String courseCode;
  String instructor;
  int credits; // Number of credits for the course
  String semester; // e.g., Fall, Spring, Summer
  bool isOnline; // Indicates if the course is online or in-person
  double fee; // Course fee in USD

  // Constructor to initialize all fields
  Course({
    required this.courseName,
    required this.courseCode,
    required this.instructor,
    required this.credits,
    required this.semester,
    required this.isOnline,
    required this.fee,
  });

  // Method to display course details
  void displayDetails() {
    print('Course Name: $courseName');
    print('Course Code: $courseCode');
    print('Instructor: $instructor');
    print('Credits: $credits');
    print('Semester: $semester');
    print('Online Course: ${isOnline ? "Yes" : "No"}');
    print('Fee: \$$fee');
  }
  
  void main() {
    // Create an instance of the Course class
    Course myCourse = Course(
      courseName: 'Introduction to Dart Programming',
      courseCode: 'CS101',
      instructor: 'Dr. Jane Kariuki',
      credits: 3,
      semester: 'Fall',
      isOnline: true,
      fee: 299.99,
    );

    // Display the course details
    myCourse.displayDetails();
  }
}
