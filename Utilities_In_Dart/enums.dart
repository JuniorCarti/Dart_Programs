//An enum is a special type that defines a group of named constant values.
//Use enums when a variable should only take one out of a small, fixed set of options
enum Day { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }

enum Weather { sunny, rainy, cloudy, snowy }

void main() {
  Weather today = Weather.sunny;

  if (today == Weather.sunny) {
    print("It's a sunny day!");
  } else {
    print("The weather isn't sunny");

    // Looping through enum values
    for (var w in Weather.values) {
      print("Weather type: $w");
    }
  }
}
