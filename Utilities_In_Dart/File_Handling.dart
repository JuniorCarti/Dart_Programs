import 'dart:io';

void main() async {
  await writeToFile();
  await readFile();
  await appendToFile();
  await readFile();
  await deleteFile();
  await safeReadFile();
}

// 1. Write to file
Future<void> writeToFile() async {
  File file = File('output.txt');
  await file.writeAsString('📄 First line of the file.\n');
  print('✅ File written.');
}

// 2. Read from file
Future<void> readFile() async {
  File file = File('output.txt');
  if (await file.exists()) {
    String content = await file.readAsString();
    print('📖 File content:\n$content');
  } else {
    print('⚠️ File not found.');
  }
}

// 3. Append to file
Future<void> appendToFile() async {
  File file = File('output.txt');
  await file.writeAsString('➕ Appended line.\n', mode: FileMode.append);
  print('✅ Line appended.');
}

// 4. Delete file
Future<void> deleteFile() async {
  File file = File('output.txt');
  if (await file.exists()) {
    await file.delete();
    print('🗑️ File deleted.');
  } else {
    print('⚠️ File already deleted.');
  }
}

// 5. Read file with error handling
Future<void> safeReadFile() async {
  try {
    File file = File('output.txt');
    String content = await file.readAsString();
    print('📄 Safe read:\n$content');
  } catch (e) {
    print('❌ Error reading file: $e');
  }
}
