class House {
  //class representing the house
  String address;
  int numberofRooms;
  double price;
  String owner;
  String type;
  String location;
  String amenities;
  String yearBuilt;

  //constructor to initialize all fields
  House({
    required this.address,
    required this.numberofRooms,
    required this.price,
    required this.owner,
    required this.type,
    required this.location,
    required this.amenities,
    required this.yearBuilt,
  });

  // Method to display house details
  void displayDetails(){
    print('House Address: $address');
    print('Number of Rooms: $numberofRooms');
    print('Price: \$${price}');
    print('Owner: $owner');
    print('Type: $type');
    print('Location: $location');
    print('Amenities: $amenities');
    print('Year Built: $yearBuilt');
  }
}
//creating the object
void main(){
  // creating an object of the House class
  House myHouse = House(
    address: "123 Main St",
    numberofRooms: 4,
    price: 250000.0,
    owner: "John Doe",
    type: "Single Family",
    location: "Downtown",
    amenities: "Pool, Garage, Garden",
    yearBuilt: "2015",
  );

  // Displaying the details of the house
  myHouse.displayDetails();
}
//output
//address: "123 Main St",
  // numberofRooms: 4,
   // price: 250000.0,
   // owner: "John Doe",
  //  type: "Single Family",
  //  location: "Downtown",
  //  amenities: "Pool, Garage, Garden",
  //  yearBuilt: "2015",
