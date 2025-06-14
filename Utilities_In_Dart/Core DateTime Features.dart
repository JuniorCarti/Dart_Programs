void main() {
  // Create DateTime objects
  DateTime now = DateTime.now(); // Current date and time
  DateTime specificDate = DateTime(2023, 6, 15); // June 15, 2023
  DateTime parsedDate = DateTime.parse('2023-06-15T14:30:00Z'); // From ISO string

  print('Current time: $now');
  print('Specific date: $specificDate');
  print('Parsed date: $parsedDate');

   // Access date components
  print('\nDate components:');
  print('Year: ${now.year}');
  print('Month: ${now.month}');
  print('Day: ${now.day}');
  print('Hour: ${now.hour}');
  print('Minute: ${now.minute}');
  print('Second: ${now.second}');
  print('Millisecond: ${now.millisecond}');
  print('Weekday: ${now.weekday}'); // 1 (Monday) to 7 (Sunday)

  // Date manipulation
  DateTime tomorrow = now.add(Duration(days: 1));
  DateTime lastWeek = now.subtract(Duration(days: 7));
  print('\nTomorrow: $tomorrow');
  print('Last week: $lastWeek');

    // Date comparison
  print('\nComparison:');
  print('Is now before tomorrow? ${now.isBefore(tomorrow)}');
  print('Is now after tomorrow? ${now.isAfter(tomorrow)}');
  print('Is now at same moment as now? ${now.isAtSameMomentAs(DateTime.now())}');

   // Difference between dates
  Duration difference = tomorrow.difference(now);
  print('\nTime until tomorrow:');
  print('Total hours: ${difference.inHours}');
  print('Total minutes: ${difference.inMinutes}');
  print('Human readable: ${difference.toString()}');
}
