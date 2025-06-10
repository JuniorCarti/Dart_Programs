//create a class Clothing
// lets create a class called Clothing
class Clothing {
  // Properties of the Clothing class
  String brand;
  String type; // e.g., shirt, pants, dress
  String size; // e.g., S, M, L, XL
  String color;
  String material; // e.g., cotton, polyester
  double price; // in USD
  bool isAvailable; // availability status

  // Constructor to initialize all fields
  Clothing({
    required this.brand,
    required this.type,
    required this.size,
    required this.color,
    required this.material,
    required this.price,
    required this.isAvailable,
  });

  // Method to display clothing details
  void displayDetails() {
    print('Brand: $brand');
    print('Type: $type');
    print('Size: $size');
    print('Color: $color');
    print('Material: $material');
    print('Price: \$$price');
    print('Available: ${isAvailable ? "Yes" : "No"}');
  }
  
  void main() {
    // Create an instance of the Clothing class
    Clothing myClothing = Clothing(
      brand: 'Nike',
      type: 'T-Shirt',
      size: 'M',
      color: 'Black',
      material: 'Cotton',
      price: 29.99,
      isAvailable: true,
    );

    // Display the clothing details
    myClothing.displayDetails();
  }
}
