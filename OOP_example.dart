//Library Management System Using OOP Principles
// This code snippet demonstrates a simple library management system using OOP principles in Dart.
// The system allows adding books, borrowing books, and returning books.
import 'dart:io';

// 1. Abstract Class (Abstraction)
abstract class LibraryItem {
  String title;
  String id;
  bool isAvailable;
  
  LibraryItem(this.title, this.id, this.isAvailable);
  
  // Abstract method
  void displayDetails();
  
  // Concrete method
  void checkAvailability() {
    print(isAvailable ? 'Available for checkout' : 'Currently checked out');
  }
}

// 2. Interface (Using abstract class)
abstract class Renewable {
  void renew();
}

// 3. Mixin for common functionality
mixin Logging {
  void logAction(String action) {
    print('${DateTime.now()}: $action');
  }
}

// 4. Inheritance and Implementation
class Book extends LibraryItem with Logging implements Renewable {
  String author;
  int pageCount;
  
  Book(String title, String id, this.author, this.pageCount) 
      : super(title, id, true);
  
  @override
  void displayDetails() {
    print('''
Book Details:
  Title: $title
  ID: $id
  Author: $author
  Pages: $pageCount
  Status: ${isAvailable ? 'Available' : 'Checked Out'}
''');
  }
  
  @override
  void renew() {
    logAction('Book $title (ID: $id) renewed');
    print('Book "$title" has been renewed for 2 more weeks.');
  }
  
  void checkOut() {
    if (isAvailable) {
      isAvailable = false;
      logAction('Book $title (ID: $id) checked out');
      print('"$title" has been checked out successfully.');
    } else {
      print('"$title" is not available for checkout.');
    }
  }
  
  void returnItem() {
    isAvailable = true;
    logAction('Book $title (ID: $id) returned');
    print('"$title" has been returned.');
  }
}

// 5. Another inherited class
class DVD extends LibraryItem {
  String director;
  Duration runtime;
  
  DVD(String title, String id, this.director, this.runtime) 
      : super(title, id, true);
  
  @override
  void displayDetails() {
    print('''
DVD Details:
  Title: $title
  ID: $id
  Director: $director
  Runtime: ${runtime.inMinutes} minutes
  Status: ${isAvailable ? 'Available' : 'Checked Out'}
''');
  }
  
  void checkOut() {
    if (isAvailable) {
      isAvailable = false;
      print('DVD "$title" has been checked out successfully.');
    } else {
      print('DVD "$title" is not available for checkout.');
    }
  }
  
  void returnItem() {
    isAvailable = true;
    print('DVD "$title" has been returned.');
  }
}

// 6. Composition - Library contains items
class Library {
  List<LibraryItem> _items = [];
  
  // Encapsulation - private field with public getter
  int get itemCount => _items.length;
  
  void addItem(LibraryItem item) {
    _items.add(item);
    print('Added "${item.title}" to the library.');
  }
  
  void displayAllItems() {
    print('\n=== Library Catalog ===');
    for (var item in _items) {
      item.displayDetails();
    }
  }
  
  LibraryItem? findItemById(String id) {
    try {
      return _items.firstWhere((item) => item.id == id);
    } catch (e) {
      return null;
    }
  }
  
  // Polymorphism in action
  void checkOutItem(String id) {
    var item = findItemById(id);
    if (item == null) {
      print('Item not found.');
      return;
    }
    
    if (item is Book) {
      item.checkOut();
    } else if (item is DVD) {
      item.checkOut();
    } else {
      print('This item type cannot be checked out.');
    }
  }
  
  void returnItem(String id) {
    var item = findItemById(id);
    if (item == null) {
      print('Item not found.');
      return;
    }
    
    if (item is Book) {
      item.returnItem();
    } else if (item is DVD) {
      item.returnItem();
    } else {
      print('This item type cannot be returned.');
    }
  }
  
  void renewItem(String id) {
    var item = findItemById(id);
    if (item == null) {
      print('Item not found.');
      return;
    }
    
    if (item is Renewable) {
      (item as Renewable).renew();
    } else {
      print('This item cannot be renewed.');
    }
  }
}

// 7. Singleton Pattern for Library
class LibraryManager {
  static final LibraryManager _instance = LibraryManager._internal();
  final Library _library = Library();
  
  factory LibraryManager() {
    return _instance;
  }
  
  LibraryManager._internal();
  
  Library get library => _library;
}

void main() {
  // Initialize the library manager
  var manager = LibraryManager();
  var library = manager.library;
  
  // Add some items to the library
  library.addItem(Book('Dart Programming', 'B001', 'John Doe', 350));
  library.addItem(DVD('The Dart Movie', 'D001', 'Jane Smith', Duration(minutes: 120)));
  library.addItem(Book('Flutter Cookbook', 'B002', 'Mike Johnson', 420));
  
  // Display all items
  library.displayAllItems();
  
  // Interactive menu
  while (true) {
    print('\n=== Library Menu ===');
    print('1. Display all items');
    print('2. Check out an item');
    print('3. Return an item');
    print('4. Renew a book');
    print('5. Exit');
    stdout.write('Enter your choice: ');
    
    var choice = stdin.readLineSync();
    
    switch (choice) {
      case '1':
        library.displayAllItems();
        break;
      case '2':
        stdout.write('Enter item ID to check out: ');
        var id = stdin.readLineSync() ?? '';
        library.checkOutItem(id);
        break;
      case '3':
        stdout.write('Enter item ID to return: ');
        var id = stdin.readLineSync() ?? '';
        library.returnItem(id);
        break;
      case '4':
        stdout.write('Enter book ID to renew: ');
        var id = stdin.readLineSync() ?? '';
        library.renewItem(id);
        break;
      case '5':
        print('Goodbye!');
        return;
      default:
        print('Invalid choice. Please try again.');
    }
  }
}
