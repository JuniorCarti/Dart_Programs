void main() {
  //basic list operations
  List<int> numbers = [1, 2, 3, 4];
  numbers.add(5);
  numbers.addAll([2, 6, 7]);
  numbers.insert(0, 0);
  numbers.removeAt(1);

  //querring

  print(numbers);
  print(numbers.first); // 0
  print(numbers.last); // 8
  print(numbers.isEmpty); // false
  print(numbers.isNotEmpty); // true
}
