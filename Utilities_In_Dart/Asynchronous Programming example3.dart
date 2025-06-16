Future<String> fetchMovie() async {
  await Future.delayed(Duration(seconds: 2));
  return '🎬 Movie: The Dart Knight';
}

void main() async {
  print("Loading...");
  String movie = await fetchMovie();
  print("Now showing: $movie");
}
