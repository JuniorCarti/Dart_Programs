//Ordering Food at a Restaurant
Future<String> cookBurger() async {
  await Future.delayed(Duration(seconds: 5));
  return '🍔 Burger is ready!';
}

void main() async {
  print('You: I’ll have a burger please.');
  var burger = cookBurger(); // starts cooking
  print('You: Meanwhile, I’ll scroll TikTok.');
  print(await burger);
}

