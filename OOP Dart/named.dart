class Product {
  String name;
  double price;

  Product({required this.name, required this.price}); //contructor for initializing fields

  Product.furniture({required String name, required double price}) //named constructor 

      : this.name = name,
        this.price = price {
    print("Named constructor called");
  }

  Product.electronics({required String name, required double price})
      : this.name = name,
        this.price = price {
    print("Named constructor called");
  }

  Product.clothing({required String name, required double price})
      : this.name = name,
        this.price = price {
    print("Named constructor called");
  }

  Product.grocery({required String name, required double price})
      : this.name = name,
        this.price = price {
    print("Named constructor called");
  }
}
// Example usage
void main() {
  Product furniture = Product.furniture(name: "Sofa", price: 499.99);
  print("Furniture: ${furniture.name}, Price: \$${furniture.price}");

  Product electronics = Product.electronics(name: "Laptop", price: 999.99);
  print("Electronics: ${electronics.name}, Price: \$${electronics.price}");

  Product clothing = Product.clothing(name: "T-Shirt", price: 19.99);
  print("Clothing: ${clothing.name}, Price: \$${clothing.price}");

  Product grocery = Product.grocery(name: "Apple", price: 0.99);
  print("Grocery: ${grocery.name}, Price: \$${grocery.price}");
}