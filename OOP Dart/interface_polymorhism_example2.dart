//interface_polymorphism.dart
//using abstract classes and interfaces
abstract class NotificationService {
  void sendNotification(String message); // Method to send a notification
}
class EmailNotification implements NotificationService {
  @override
  void sendNotification(String message) {
    print("Sending Email Notification: $message");
  }
}
class SMSNotification implements NotificationService {
  @override
  void sendNotification(String message) {
    print("Sending SMS Notification: $message");
  }
}
class PushNotification implements NotificationService {
  @override
  void sendNotification(String message) {
    print("Sending Push Notification: $message");
  }
}
class InAppNotification implements NotificationService {
  @override
  void sendNotification(String message) {
    print("Sending In-App Notification: $message");
  }
}
void main() {
  // Creating instances of different notification services
  NotificationService email = EmailNotification();
  NotificationService sms = SMSNotification();
  NotificationService push = PushNotification();
  NotificationService inApp = InAppNotification();

  // Sending notifications using different services
  email.sendNotification("Welcome to our service!"); // Outputs: Sending Email Notification: Welcome to our service!
  sms.sendNotification("Your verification code is 123456"); // Outputs: Sending SMS Notification: Your verification code is 123456
  push.sendNotification("You have a new message!"); // Outputs: Sending Push Notification: You have a new message!
  inApp.sendNotification("New feature available in the app!"); // Outputs: Sending In-App Notification: New feature available in the app!
}