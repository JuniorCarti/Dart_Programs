//Asynchronous programming allows your code to perform tasks
//without waiting for other tasks to complete. It's like saying:
//Do this task, and while you’re at it, I’ll go do something else and come back when you’re done.”
//This is especially useful for tasks that take time to complete, like:
//Fetching data from the internet
//Reading/writing files
//Waiting for user input
//Making API requests

//Synchronous Code:
//Code is executed line by line.
//Each task waits for the previous one to finish.

  //Asynchronous Code:
  //Code doesn't wait for tasks to finish.
  //It can continue with other operations while a task is still running in the background.

  //1. Future: Represents a value that will be available in the future.
Future<String> fetchData() {
    return Future.delayed(Duration(seconds: 10), () => 'Data loaded');
  }
void main() async {
  print("Start");
  String Data = await fetchData();
  print("Processing...");
  print("End");

  //2. async & await
  //async: Marks a function as asynchronous.
  //await: Waits for a future to complete without blocking the rest of the program.
}
