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