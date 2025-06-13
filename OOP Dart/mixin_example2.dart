//payment processing multiple behaviors using mixins
// This example demonstrates how to use mixins in Dart to implement multiple behaviors
//Different payment methods (PayPal, Stripe, M-Pesa, Bank Transfer) can be implemented using mixins
mixin CardValidation {
  bool validateCard(String cardNumber) {
    // Simple validation logic for demonstration purposes
    return cardNumber.length == 16;
  }
}