//variables in dart
void main() {
  // Declaring variables
  int age = 25;
  int id = 3614632;
  double height = 5.9;
  String name = "Ridge";
  String county = "Eldoret";
  String hobby = "Coding";
  String favoriteTeam = "Manchester City";


  bool isStudent = true;
  final String country = "Kenya";

  // Printing variables
  print("Name: $name");
  print("Age: $age");
  print("ID: $id");
  print("Height: $height");
  print("Is Student: $isStudent");

  // Changing the value of a variable
  age = 26;
  print("Updated Age: $age");
  //strings can be concatenated
  String greeting = "Hello, " + name + "! You are from " + country + ". " + 
 "And your current location is " + county + "." + " Your favorite hobby is " + 
  hobby + " and you support " + favoriteTeam + ".";
  print(greeting);
}
