//Downloading a File from the Internet
//Start downloading a file.
//You continue working in your app.
//Once the download finishes, the file is available.
Future<void> downloadFile() async {
  print("Starting download...");
  await Future.delayed(Duration(seconds: 15));
  print("✅ File downloaded!");
}

void main() async {
  print("Opening app...");
  await downloadFile();
  print("Now displaying the file.");
}
