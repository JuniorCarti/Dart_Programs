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
class PayPalPayment with CardValidation, EmailNotification, PaymentProcessing, PaymentReceipt {
  void makePayment(String cardNumber, String email, double amount) {
    if (validateCard(cardNumber)) {
      processPayment(amount);
      sendEmailNotification(email, "Your payment of \$${amount} has been processed successfully.");
      sendReceipt(email, amount);
    } else {
      print("Invalid card number.");
    }
  }
}
class StripePayment with CardValidation, SmsNotification, PaymentProcessing, PaymentReceipt {
  void makePayment(String cardNumber, String phoneNumber, double amount) {
    if (validateCard(cardNumber)) {
      processPayment(amount);
      sendSmsNotification(phoneNumber, "Your payment of \$${amount} has been processed successfully.");
      sendReceipt(phoneNumber, amount);
    } else {
      print("Invalid card number.");
    }
  }
}
class MpesaPayment with SmsNotification, PaymentProcessing, PaymentReceipt {
  void makePayment(String phoneNumber, double amount) {
    processPayment(amount);
    sendSmsNotification(phoneNumber, "Your payment of \$${amount} has been processed successfully.");
    sendReceipt(phoneNumber, amount);
  }
}

