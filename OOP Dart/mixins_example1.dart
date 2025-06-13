//logging functionality(cross cutting concerns) using mixins
//multiple classes (User Service, Product Service, Order Service) need logging 
//but don't want to inherit from a common base class
mixin Logger {
  void log(String message) {
    print("Log: $message - ${DateTime.now()}");
  }
}  
// User Service class using Logger mixin
class UserService with Logger {
  void createUser(String username) {
    log("Creating user: $username");
    // Logic to create user
  }
}
// Product Service class using Logger mixin
class ProductService with Logger {
  void addProduct(String productName) {
    log("Adding product: $productName");
    // Logic to add product
  }
}
// Order Service class using Logger mixin
class OrderService with Logger {
  void createOrder(String orderId) {
    log("Creating order: $orderId");
    // Logic to create order
  }
}