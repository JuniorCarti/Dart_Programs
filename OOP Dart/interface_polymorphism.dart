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
class MpesaProcessor implements PaymentProcessor { // Class implementing the PaymentProcessor interface
  @override
  void processPayment(double amount) { // Implementation of the processPayment method for M-Pesa
    print("Processing payment of \$${amount} through M-Pesa.");
  }
}
class BankTransferProcessor implements PaymentProcessor { // Class implementing the PaymentProcessor interface
  @override
  void processPayment(double amount) { // Implementation of the processPayment method for Bank Transfer
    print("Processing payment of \$${amount} through Bank Transfer.");
  }
}
void main() {
  // Creating instances of different payment processors
  PaymentProcessor paypal = PayPalProcessor();
  PaymentProcessor stripe = StripeProcessor();
  PaymentProcessor mpesa = MpesaProcessor();
  PaymentProcessor bankTransfer = BankTransferProcessor();

  // Processing payments using different processors
  paypal.processPayment(100.0); // Outputs: Processing payment of $100.0 through PayPal.
  stripe.processPayment(200.0); // Outputs: Processing payment of $200.0 through Stripe.
  mpesa.processPayment(150.0); // Outputs: Processing payment of $150.0 through M-Pesa.
  bankTransfer.processPayment(300.0); // Outputs: Processing payment of $300.0 through Bank Transfer.
}