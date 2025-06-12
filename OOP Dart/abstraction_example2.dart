//mobile payment example
// This example demonstrates abstraction in Dart using an abstract class and its implementation.
abstract class MobilePayment {
  void makePayment(double amount); // Abstract method to make a payment
}
class PayPalPayment implements MobilePayment { // Implementation of the MobilePayment interface for PayPal
  @override
  void makePayment(double amount) { // Implementation of the makePayment method for PayPal
    print("Processing payment of \$${amount} through PayPal.");
  }
}
class StripePayment implements MobilePayment { // Implementation of the MobilePayment interface for Stripe
  @override
  void makePayment(double amount) { //
    print("Processing payment of \$${amount} through Stripe.");
  }
}
class MpesaPayment implements MobilePayment { // Implementation of the MobilePayment interface for M-Pesa
  @override
  void makePayment(double amount) { // Implementation of the makePayment method for M-Pesa
    print("Processing payment of \$${amount} through M-Pesa.");
  }
}
class BankTransferPayment implements MobilePayment { // Implementation of the MobilePayment interface for Bank Transfer
  @override
  void makePayment(double amount) { // Implementation of the makePayment method for Bank Transfer
    print("Processing payment of \$${amount} through Bank Transfer.");
  }
}
void main() {
  // Creating instances of different mobile payment implementations
  MobilePayment paypal = PayPalPayment();
  MobilePayment stripe = StripePayment();
  MobilePayment mpesa = MpesaPayment();
  MobilePayment bankTransfer = BankTransferPayment();

  // Making payments using different mobile payment methods
  paypal.makePayment(100.0); // Outputs: Processing payment of $100.0 through PayPal.
  stripe.makePayment(200.0); // Outputs: Processing payment of $200.0 through Stripe.
  mpesa.makePayment(150.0); // Outputs: Processing payment of $150.0 through M-Pesa.
  bankTransfer.makePayment(300.0); // Outputs: Processing payment of $300.0 through Bank Transfer.
}