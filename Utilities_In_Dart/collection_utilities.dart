import 'dart:collection';

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

  //transformation
  // 1. map() – Transform Each Element
  //The map() method is used to apply a function to each item in a list and return a new iterable.
  print(numbers.map((n) => n * 2).toList());
  //map() takes every n in the list and returns n * n.
  //The result is a transformed list with each element squared.

  //2. where() – Filter Elements
  //The where() method filters the list based on a condition.
  //Only elements that satisfy the condition (n % 2 == 0) are kept.
  print(numbers.where((n) => n % 2 == 0).toList());

  //➕ 3. reduce() – Reduce to a Single Value
  //reduce() combines elements into one single value, such as a sum or max.
  print(numbers.reduce((a, b) => a + b)); // 29 (sum)
  print(numbers.reduce((a, b) => a - b));
  print(List);

  //sorting
  numbers.sort();
  print(numbers);

  //advanced operations
  print(
    numbers.fold<int>(0, (int sum, int n) => sum + n),
  ); // 29 (sum with initial value)
  print(numbers.any((n) => n > 5)); // true
  print(numbers.every((n) => n > 5)); // false
  print(numbers.take(3)); // (0, 2, 2)
  print(numbers.skip(4)); // (4, 5, 6, 7)

  List<int> moreNumbers = [...numbers, 8, 9, 10, 11, 12, 13];
  print(moreNumbers);
}
