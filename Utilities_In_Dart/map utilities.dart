void main() {
  //map operations
  Map<String, int> ages = {'Alice': 20, 'Njenga': 30, 'Kimberly': 18};
  //Accessing the map

  print(ages["Alice"]);
  print(ages['Njenga']);
  print(ages.containsKey('Kimberly'));
  print(ages.containsValue(90));

  //modifiying
  ages['Aaaron'] = 23;
  ages.update('Alice', (ages) => ages + 5);
  ages.remove('Njenga');

  print(ages['Alice']);
  print(ages);

   // Iterating
  ages.forEach((name, age) => print('$name is $age years old'));
  
  // Transformation
  print(ages.map((name, age) => MapEntry(name, age + 1)));
  print(ages.keys.where((name) => name.length > 3));

    // Merging maps
  Map<String, int> moreAges = {'Eve': 27, 'Frank': 35};
  Map<String, int> allAges = {...ages, ...moreAges};
  print(allAges);
}
