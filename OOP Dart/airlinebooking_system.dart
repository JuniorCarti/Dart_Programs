//abstraction.dart
abstract class AirlineBookingSystem {
  void bookFlight(String flightNumber, String passengerName); // Abstract method to book a flight
  void cancelFlight(String flightNumber, String passengerName); // Abstract method to cancel a flight
}