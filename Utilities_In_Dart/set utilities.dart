void main() {
  // Set operations
  Set<String> fruits = {'apple', 'banana', 'orange'};
  
  // Basic operations
  fruits.add('pear');
  fruits.addAll({'grape', 'kiwi'});
  fruits.remove('banana');
  
  // Set-specific operations
  Set<String> tropical = {'banana', 'mango', 'pineapple', 'orange'};
  print(fruits.union(tropical)); // All unique fruits
  print(fruits.intersection(tropical)); // Only 'orange'
  print(fruits.difference(tropical)); // In fruits but not in tropical
  print(tropical.difference(fruits)); // In tropical but not in fruits
}
