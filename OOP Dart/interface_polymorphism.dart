//interface_polymorphism.dart
// Interface polymorphism in Dart allows different classes to implement the same interface,
// enabling them to be treated interchangeably. This is achieved through the use of abstract classes or interfaces.

//example of interface polymorphism
abstract class PaymentProcessor { // Abstract class defining the interface for payment processing
  void processPayment(double amount);
}
class PayPalProcessor implements PaymentProcessor { // Class implementing the PaymentProcessor interface
  @override
  void processPayment(double amount) { // Implementation of the processPayment method for PayPal
    print("Processing payment of \$${amount} through PayPal.");
  }
}
class StripeProcessor implements PaymentProcessor { // Class implementing the PaymentProcessor interface
  @override
  void processPayment(double amount) { // Implementation of the processPayment method for Stripe
    print("Processing payment of \$${amount} through Stripe.");
  }
}