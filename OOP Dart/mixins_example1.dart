//logging functionality(cross cutting concerns) using mixins
//multiple classes (User Service, Product Service, Order Service) need logging 
//but don't want to inherit from a common base class
mixin Logger {
  void log(String message) {
    print("Log: $message - ${DateTime.now()}");
  }
}  