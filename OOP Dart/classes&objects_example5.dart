//create a class Phone
// lets create a class called Smartphone
class Smartphone {
  // Properties of the Smartphone class
  String brand;
  String model;
  String operatingSystem;
  int storage; // in GB
  int ram; // in GB
  double screenSize; // in inches
  int batteryCapacity; // in mAh
  String cameraSpecifications;
  double price; // in USD
  bool is5GEnabled;

  // Constructor to initialize all fields
  Smartphone({
    required this.brand,
    required this.model,
    required this.operatingSystem,
    required this.storage,
    required this.ram,
    required this.screenSize,
    required this.batteryCapacity,
    required this.cameraSpecifications,
    required this.is5GEnabled,
    required this.price,
  });

  // Method to display smartphone details
  void displayDetails() {
    print('Brand: $brand');
    print('Model: $model');
    print('Operating System: $operatingSystem');
    print('Storage: $storage GB');
    print('RAM: $ram GB');
    print('Screen Size: $screenSize inches');
    print('Battery Capacity: $batteryCapacity mAh');
    print('Camera Specifications: $cameraSpecifications');
    print('5G Enabled: ${is5GEnabled ? "Yes" : "No"}');
  }
  void main() {
    // Create an instance of the Smartphone class
    Smartphone myPhone = Smartphone(
      brand: 'Samsung',
      model: 'Galaxy S21',
      operatingSystem: 'Android 11',
      storage: 128,
      ram: 8,
      screenSize: 6.2,
      price: 799.99,
      batteryCapacity: 4000,
      cameraSpecifications: '64 MP Triple Camera',
      is5GEnabled: true,
    );

    // Display the smartphone details
    myPhone.displayDetails();
  }
}
