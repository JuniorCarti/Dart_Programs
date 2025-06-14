void main() {
  // Create DateTime objects
  DateTime now = DateTime.now(); // Current date and time
  DateTime specificDate = DateTime(2023, 6, 15); // June 15, 2023
  DateTime parsedDate = DateTime.parse('2023-06-15T14:30:00Z'); // From ISO string

  print('Current time: $now');
  print('Specific date: $specificDate');
  print('Parsed date: $parsedDate');
