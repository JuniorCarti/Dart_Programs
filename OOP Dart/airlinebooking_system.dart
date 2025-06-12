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
class InternationalAirlineBooking extends KenyaAirwaysBookingSystem {
  @override
  void bookFlight(String flightNumber, String passengerName) {
    print("International flight $flightNumber booked for $passengerName.");
  }

  @override
  void cancelFlight(String flightNumber, String passengerName) {
    print("International flight $flightNumber canceled for $passengerName.");
  }
}
void main() {
  // Creating instances of domestic and international airline booking systems
  KenyaAirwaysBookingSystem domesticBooking = DomesticAirlineBooking();
  KenyaAirwaysBookingSystem internationalBooking = InternationalAirlineBooking();

  // Booking flights
  domesticBooking.bookFlight("KQ123", "John Doe"); // Outputs: Domestic flight KQ123 booked for John Doe.
  internationalBooking.bookFlight("KQ456", "Jane Smith"); // Outputs: International flight KQ456 booked for Jane Smith.

  // Canceling flights
  domesticBooking.cancelFlight("KQ123", "John Doe"); // Outputs: Domestic flight KQ123 canceled for John Doe.
  internationalBooking.cancelFlight("KQ456", "Jane Smith"); // Outputs: International flight KQ456 canceled for Jane Smith.
}