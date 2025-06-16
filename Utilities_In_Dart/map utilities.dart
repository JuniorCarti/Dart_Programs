void main() {
  //map operations
  Map<String, int> ages = {'Alice': 20, 'Njenga': 30, 'Kimberly': 18};
  //Accessing the map

  print(ages["Alice"]);
  print(ages['Njenga']);
  print(ages.containsKey('Kimberly'));
  print(ages.containsValue(90));
}
