

class SmartPhone {
  String brand;
  String model;
  String color;
  int storage;
  int ram;
  String OperatingSystem;
  String camera;
  String battery;
  double price;

  // Constructor to initialize all fields
  SmartPhone({
    required this.brand,
    required this.model,
    required this.color,
    required this.storage,
    required this.ram,
    required this.OperatingSystem,
    required this.camera,
    required this.battery,
    required this.price,
  });

  void displayDetails() {
    print('Smartphone Brand: $brand');
    print('Model: $model');
    print('Color: $color');
    print('Storage: $storage GB');
    print('RAM: $ram GB');
    print('Operating System: $OperatingSystem');
    print('Camera: $camera MP');
    print('Battery: $battery mAh');
    print('Price: \$${price}');
  }
}
void main() {
SmartPhone mySmartphone = SmartPhone(
    brand: "Samsung",
    model: "Galaxy S21",
    color: "Phantom Gray",
    storage: 128,
    ram: 8,
    OperatingSystem: "Android 11",
    camera: "64",
    battery: "4000",
    price: 799.99,
  );
  // Displaying the details of the smartphone
  mySmartphone.displayDetails();
}
