//handling errors
Future<String> fetchUserData(bool success) async {
  await Future.delayed(Duration(seconds: 2)); // simulate network delay

  if (success) {
    return "✅ User data fetched successfully!";
  } else {
    throw Exception("❌ Failed to fetch user data.");
  }
}

void main() async {
  print("Fetching user data...");

  try {
    // Change the argument to `false` to simulate failure
    String response = await fetchUserData(false); 
    print(response);
  } catch (e) {
    print("Caught an error: $e");
  }

  print("Program continues...");
}

