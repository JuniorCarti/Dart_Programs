//create a class for Laptop
// lets create a class called Laptop
class Laptop {
  // Properties of the Laptop class
  String brand;
  String model;
  String processor;
  int ram; // in GB
  int storage; // in GB
  String graphicsCard;
  String operatingSystem;
  double screenSize; // in inches
  int batteryLife; // in hours
  bool isTouchscreen;

  // Constructor to initialize all fields
  Laptop({
    required this.brand,
    required this.model,
    required this.processor,
    required this.ram,
    required this.storage,
    required this.graphicsCard,
    required this.operatingSystem,
    required this.screenSize,
    required this.batteryLife,
    required this.isTouchscreen,
  });

  // Method to display laptop details
  void displayDetails() {
    print('Brand: $brand');
    print('Model: $model');
    print('Processor: $processor');
    print('RAM: $ram GB');
    print('Storage: $storage GB');
    print('Graphics Card: $graphicsCard');
    print('Operating System: $operatingSystem');
    print('Screen Size: $screenSize inches');
    print('Battery Life: $batteryLife hours');
    print('Touchscreen: ${isTouchscreen ? "Yes" : "No"}');
  }
}