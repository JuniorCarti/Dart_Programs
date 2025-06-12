//mobile payment example
// This example demonstrates abstraction in Dart using an abstract class and its implementation.
abstract class MobilePayment {
  void makePayment(double amount); // Abstract method to make a payment
}
class PayPalPayment implements MobilePayment {
  @override
  void makePayment(double amount) {
    print("Processing payment of \$${amount} through PayPal.");
  }
}