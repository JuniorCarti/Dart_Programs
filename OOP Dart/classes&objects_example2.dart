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
  })
}
