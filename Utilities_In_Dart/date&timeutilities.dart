//date and time utilities
//what are the current date and time?
// what is the current date and time in a specific timezone?
//meaning of the date and time in a specific timezone?
//Dart's DateTime class provides comprehensive functionality for working with dates and times.
// It includes methods for parsing, formatting, and manipulating date and time values.
// The DateTime class is immutable, meaning that any operation that modifies a 
//date and time value returns a new instance.
// The DateTime class supports both UTC and local time zones, allowing for 
//flexible date and time handling.
// The DateTime class can be used to perform arithmetic operations on dates and times,
// such as adding or subtracting durations, comparing dates, and extracting components 
//like year, month, day, hour, minute, and second.
// The DateTime class can be used to format dates and times in various ways,
// including custom formats and localized representations.
// The DateTime class can be used to parse date and time strings in various formats,
// including ISO 8601 and custom formats.
//core date time features
void main(){
  // Get the current date and time
  DateTime now = DateTime.now(); //
  print("Current date and time: $now");

  // Get the current date and time in UTC
  DateTime utcNow = DateTime.now().toUtc();
  print("Current date and time in UTC: $utcNow");

  DateTime EATNow = DateTime.now().toUtc().add(Duration(hours: 3)); // East Africa Time (EAT) is UTC+3
  print("Current date and time in East Africa Time (EAT): $EATNow");

  // Get the current date and time in a specific timezone (e.g., New York)
  // Note: Dart does not have built-in timezone support, so you may need to use a package like 'timezone'
  // For demonstration, we'll just show the local time
  DateTime localNow = DateTime.now();
  print("Current date and time in local timezone: $localNow");

  // Format the date and time
  String formattedDate = "${now.year}-${now.month}-${now.day} ${now.hour}:${now.minute}:${now.second}";
  print("Formatted date and time: $formattedDate");

  // Parse a date string
  String dateString = "2023-10-01 12:00:00";
  DateTime parsedDate = DateTime.parse(dateString);
  print("Parsed date: $parsedDate");
}


