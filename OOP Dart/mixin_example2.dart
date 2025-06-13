//payment processing multiple behaviors using mixins
// This example demonstrates how to use mixins in Dart to implement multiple behaviors
//Different payment methods (PayPal, Stripe, M-Pesa, Bank Transfer) can be implemented using mixins
mixin CardValidation {
  bool validateCard(String cardNumber) {
    // Simple validation logic for demonstration purposes
    return cardNumber.length == 16;
  }
}
mixin EmailNotification {
  void sendEmailNotification(String email, String message) {
    print("Sending email to $email: ${message}");
  }
}
mixin SmsNotification {
  void sendSmsNotification(String phoneNumber, String message) {
    print("Sending SMS to $phoneNumber: ${message}");
  }
}
mixin PaymentProcessing {
  void processPayment(double amount) {
    print("Processing payment of \$${amount}.");
  }
}
mixin PaymentReceipt {
  void sendReceipt(String email, double amount) {
    print("Sending receipt to $email for payment of \$${amount}.");
  }
}

