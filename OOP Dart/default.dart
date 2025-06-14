class Product {
  String name = '';
  double price = 0.0;
  String description = '';
  bool inStock = false;

  Product() {
    print("default constructor called");
  }
}

var product = Product();