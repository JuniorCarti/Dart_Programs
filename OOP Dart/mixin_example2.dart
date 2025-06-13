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

class PayPalPayment
    with CardValidation, EmailNotification, PaymentProcessing, PaymentReceipt {
  void makePayment(String cardNumber, String email, double amount) {
    if (validateCard(cardNumber)) {
      processPayment(amount);
      sendEmailNotification(
        email,
        "Your payment of \$${amount} has been processed successfully.",
      );
      sendReceipt(email, amount);
    } else {
      print("Invalid card number.");
    }
  }
}

class StripePayment
    with CardValidation, SmsNotification, PaymentProcessing, PaymentReceipt {
  void makePayment(String cardNumber, String phoneNumber, double amount) {
    if (validateCard(cardNumber)) {
      processPayment(amount);
      sendSmsNotification(
        phoneNumber,
        "Your payment of \$${amount} has been processed successfully.",
      );
      sendReceipt(phoneNumber, amount);
    } else {
      print("Invalid card number.");
    }
  }
}

class MpesaPayment with SmsNotification, PaymentProcessing, PaymentReceipt {
  void makePayment(String phoneNumber, double amount) {
    processPayment(amount);
    sendSmsNotification(
      phoneNumber,
      "Your payment of \$${amount} has been processed successfully.",
    );
    sendReceipt(phoneNumber, amount);
  }
}

class BankTransferPayment
    with EmailNotification, PaymentProcessing, PaymentReceipt {
  void makePayment(String email, double amount) {
    processPayment(amount);
    sendEmailNotification(
      email,
      "Your payment of \$${amount} has been processed successfully.",
    );
    sendReceipt(email, amount);
  }
}

void main() {
  // Creating instances of different payment methods
  PayPalPayment paypal = PayPalPayment();
  StripePayment stripe = StripePayment();
  MpesaPayment mpesa = MpesaPayment();
  BankTransferPayment bankTransfer = BankTransferPayment();

  // Making payments using different payment methods
  paypal.makePayment("1090123456789012","juniorridge@gmail.com",100.0,); // Valid card number
  stripe.makePayment( "1090123456789012", "+254712345678",200.0,); // Valid card number
  mpesa.makePayment("+254712345678", 150.0); // M-Pesa payment
  bankTransfer.makePayment( "ridgejunior@yahoo.com",300.0,); // Bank transfer payment
}
