//abstraction.dart
abstract class KenyaAirwaysBookingSystem {
  void bookFlight(String flightNumber, String passengerName); // Abstract method to book a flight
  void cancelFlight(String flightNumber, String passengerName); // Abstract method to cancel a flight
}
class DomesticAirlineBooking extends KenyaAirwaysBookingSystem {
  @override
  void bookFlight(String flightNumber, String passengerName) {
    print("Domestic flight $flightNumber booked for $passengerName.");
  }

  @override
  void cancelFlight(String flightNumber, String passengerName) {
    print("Domestic flight $flightNumber canceled for $passengerName.");
  }
}