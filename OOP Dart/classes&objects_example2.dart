//lets build a class that represents a house
class House {
  // Properties (fields) These are the main components of a house.
  String address;
  int numberOfRooms;
  double area; // in square meters
  String type; // e.g., apartment, villa, bungalow, bedsitter, mansion
  String owner;
  String constructionYear;
  String roofType; // e.g., flat, pitched, gabled
  String wallMaterial; // e.g., brick, wood, concrete
  String flooringType; // e.g., hardwood, tile, carpet
  String heatingSystem; // e.g., central heating, underfloor heating
  String coolingSystem; // e.g., air conditioning, evaporative cooling
  String securityFeatures; // e.g., alarm system, CCTV, security doors
  String gardenFeatures; // e.g., lawn, flower beds, vegetable garden
  String garageType; // e.g., attached, detached, carport
  String exteriorFinish; // e.g., paint, stucco, siding
  String interiorFinish; // e.g., paint, wallpaper, tiles
  int yearBuilt;
  int numberOfFloors;
  String utilities; // e.g., electricity, water, gas, internet
  String zoningType; // e.g., residential, commercial, mixed-use
  String energyEfficiencyRating; // e.g., A, B, C, D

  //constructor to initialize all fields
  House({
    required this.address,
    required this.numberOfRooms,
    required this.area,
    required this.type,
    required this.owner,
    required this.constructionYear,
    required this.roofType,
    required this.wallMaterial,
    required this.flooringType,
    required this.heatingSystem,
    required this.coolingSystem,
    required this.securityFeatures,
    required this.gardenFeatures,
    required this.garageType,
    required this.exteriorFinish,
    required this.interiorFinish,
    required this.yearBuilt,
    required this.numberOfFloors,
    required this.utilities,
    required this.zoningType,
    required this.energyEfficiencyRating,
  });
  //Method to display house details
  void displayDetails() {
    print('House Address: $address');
    print('Number of Rooms: $numberOfRooms');
    print('Area: $area square meters');
    print('Type: $type');
    print('Owner: $owner');
    print('Construction Year: $constructionYear');
    print('Roof Type: $roofType');
    print('Wall Material: $wallMaterial');
    print('Flooring Type: $flooringType');
    print('Heating System: $heatingSystem');
    print('Cooling System: $coolingSystem');
    print('Security Features: $securityFeatures');
    print('Garden Features: $gardenFeatures');
    print('Garage Type: $garageType');
    print('Exterior Finish: $exteriorFinish');
    print('Interior Finish: $interiorFinish');
    print('Year Built: $yearBuilt');
    print('Number of Floors: $numberOfFloors');
    print('Utilities: $utilities');
    print('Zoning Type: $zoningType');
    print('Energy Efficiency Rating: $energyEfficiencyRating');
  }

  //creating objects
  // This is where we create an instance of the House class and display its details.
  // This function serves as the entry point of the Dart program.
  void main() {
    // Create an instance of the House class
    House myHouse = House(
      address: 'P.o Box 123, Nairobi, Kenya',
      numberOfRooms: 4,
      area: 150.0,
      type: 'Villa',
      owner: 'Robert Mwangi',
      constructionYear: '2020',
      roofType: 'Pitched',
      wallMaterial: 'Brick',
      flooringType: 'Hardwood',
      heatingSystem: 'Central Heating',
      coolingSystem: 'Air Conditioning',
      securityFeatures: 'CCTV, Alarm System',
      gardenFeatures: 'Lawn, Flower Beds',
      garageType: 'Attached',
      exteriorFinish: 'Paint',
      interiorFinish: 'Wallpaper',
      yearBuilt: 2020,
      numberOfFloors: 2,
      utilities: 'Electricity, Water, Gas, Internet',
      zoningType: 'Residential',
      energyEfficiencyRating: 'A',
    );

    // Display the details of the house
    myHouse.displayDetails();
  }
}
